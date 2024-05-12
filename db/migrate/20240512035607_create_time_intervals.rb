class CreateTimeIntervals < ActiveRecord::Migration[7.1]
  def change
    create_table :time_intervals do |t|
      t.references :user, null: false, foreign_key: true
      t.date :day
      t.string :domain
      t.text :intervals
      t.timestamps
    end
  end
end
