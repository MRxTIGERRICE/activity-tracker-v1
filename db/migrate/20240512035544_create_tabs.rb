class CreateTabs < ActiveRecord::Migration[7.1]
  def change
    create_table :tabs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :url
      t.integer :counter
      t.integer :summary_time
      t.string :favicon

      t.timestamps
    end
  end
end
