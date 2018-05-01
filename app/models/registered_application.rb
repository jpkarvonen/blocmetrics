class RegisteredApplication < ApplicationRecord
  belongs_to :user
  has_many :events
  validates :name, length: { minimum: 1, maximum: 100 }, presence: true
  validates :url,  length: { minimum: 1, maximum: 100 }, presence: true
end
