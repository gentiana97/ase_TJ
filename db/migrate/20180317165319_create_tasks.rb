class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name_task
      t.integer :effort_driven
      t.integer :estimate_effort
      t.integer :team_id
      t.integer :percentage_task
      t.integer :priority

      t.timestamps
    end
  end
end
