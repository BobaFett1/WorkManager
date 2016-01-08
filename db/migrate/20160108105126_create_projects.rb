class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :DisplayName
      t.text :Description
      t.date :DueDate

      t.timestamps null: false
    end
  end
end
