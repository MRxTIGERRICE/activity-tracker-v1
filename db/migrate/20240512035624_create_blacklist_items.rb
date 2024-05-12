class CreateBlacklistItems < ActiveRecord::Migration[7.1]
  def change
    create_table :blacklist_items do |t|
      t.references :user, null: false, foreign_key: true
      t.string :domain
      t.integer :time_limit

      t.timestamps
    end
  end
end
