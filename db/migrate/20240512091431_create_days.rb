class CreateDays < ActiveRecord::Migration[7.1]
  def change
    create_table :days do |t|
      t.references :tab, null: false, foreign_key: true
      t.integer :counter
      t.date :date
      t.integer :summary

      t.timestamps
    end
  end
end
