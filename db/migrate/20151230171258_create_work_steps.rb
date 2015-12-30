class CreateWorkSteps < ActiveRecord::Migration
  def change
    create_table :work_steps do |t|
      t.string :DisplayName
      t.string :Description
      t.boolean :AllowQuantityInput

      t.timestamps null: false
    end
  end
end
