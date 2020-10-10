class AddNumberOfServingsToMedicinesTable < ActiveRecord::Migration[6.0]
  def change
    add_column :medicines, :number_of_servings, :integer
  end
end
