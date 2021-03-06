class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :date_of_birth, :datetime, null: false
    add_column :users, :nationality, :string, null: false
    add_column :users, :contact_number, :string, null: false
    add_column :users, :user_type, :string, null: false
  end
end
