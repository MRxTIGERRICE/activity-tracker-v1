class User < ApplicationRecord
  has_many :tabs
  has_many :time_intervals
  has_many :blacklist_items
end
