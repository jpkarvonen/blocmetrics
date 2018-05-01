class Event < ApplicationRecord
  belongs_to :registered_application
  has_many :events
end
