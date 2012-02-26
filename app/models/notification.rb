class Notification < ActiveRecord::Base
  scope :updated_after, ->(from) {where('created_at > ?', Time.at(from.to_i))}
end
