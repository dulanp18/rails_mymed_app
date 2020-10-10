require "google/apis/calendar_v3"
require "google/api_client/client_secrets.rb"


class TasksController < ApplicationController
  CALENDAR_ID = 'primary'

  def new
    @task = Task.new
  end

  def create
    task = params[:task]
    @task = Task.new(task_params)
    @task.start_date = Time.new(task['start_date(1i)'],task['start_date(2i)'],task['start_date(3i)'],task['start_date(4i)'],task['start_date(5i)']).to_datetime
    @task.end_date = @task.start_date + 10.minutes
    @task.user = current_user
    @task.prescription = Prescription.find(params[:other][:prescription_id])
    @task.save
    @consultation = Consultation.find(params[:other][:consultation_id])
    authorize @task

    if current_user.present? && current_user.access_token.present? && current_user.refresh_token.present?
      client = get_google_calendar_client current_user
      event = get_event task
      client.insert_event('primary', event)
      flash[:notice] = 'Prescription was successfully added.'
      redirect_to consultation_path(@consultation)
    else
      redirect_to login_path
    end
  end


  def get_google_calendar_client current_user
    client = Google::Apis::CalendarV3::CalendarService.new
    secrets = Google::APIClient::ClientSecrets.new({
      "web" => {
        "access_token" => current_user.access_token,
        "refresh_token" => current_user.refresh_token,
        "client_id" => ENV["GOOGLE_API_KEY"],
        "client_secret" => ENV["GOOGLE_API_SECRET"]
      }
    })

    begin
      client.authorization = secrets.to_authorization
      client.authorization.grant_type = "refresh_token"

      if !current_user.present?
        client.authorization.refresh!
        current_user.update_attributes(
          access_token: client.authorization.access_token,
          refresh_token: client.authorization.refresh_token,
          expires_at: client.authorization.expires_at.to_i
        )
      end
    rescue => e
      flash[:error] = 'Your token has been expired. Please login again with google.'
      redirect_to :login
    end
    client
  end


  private

    def get_event task
      start_time = Time.new(task['start_date(1i)'],task['start_date(2i)'],task['start_date(3i)'],task['start_date(4i)'],task['start_date(5i)']).to_datetime
      end_time = start_time + 10.minutes
      start_time_str = start_time.rfc3339
      end_time_str = end_time.rfc3339
      event = Google::Apis::CalendarV3::Event.new({
        summary: task[:title],
        description: task[:description],
        start: {
          date_time: start_time_str,
          time_zone: "Asia/Kolkata"
        },
        end: {
          date_time: end_time_str,
          time_zone: "Asia/Kolkata"
        },
        recurrence: [
          "RRULE:FREQ=DAILY;COUNT=#{task[:repeat_days]}"
        ],
        reminders: {
          use_default: false,
          overrides: [
            Google::Apis::CalendarV3::EventReminder.new(reminder_method:"popup", minutes: 10),
            Google::Apis::CalendarV3::EventReminder.new(reminder_method:"email", minutes: 20)
          ]
        },
        notification_settings: {
          notifications: [
                          {type: 'event_creation', method: 'email'},
                          {type: 'event_change', method: 'email'},
                          {type: 'event_cancellation', method: 'email'},
                          {type: 'event_response', method: 'email'}
                         ]
        }, 'primary': true
      })
    end

    def task_params
      params.require(:task).permit(:title,:description)
    end

end
