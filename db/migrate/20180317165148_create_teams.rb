class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :availability
      t.date :departure_date
      t.date :end_date

      t.timestamps
    end
  end
end
