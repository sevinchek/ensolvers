# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :done
      t.references :folder, null: false, foreign_key: true

      t.timestamps
    end
  end
end
