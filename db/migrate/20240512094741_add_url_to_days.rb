class AddUrlToDays < ActiveRecord::Migration[7.1]
  def change
    add_column :days, :url, :string
  end
end
