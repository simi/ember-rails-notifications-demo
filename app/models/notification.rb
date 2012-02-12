class Notification < ActiveRecord::Base
  scope :from, ->(from) {where('created_at > ?', Time.at(from.to_i))}
end
