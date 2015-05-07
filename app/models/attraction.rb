class Attraction < ActiveRecord::Base
  belongs_to :park
  validates :name, :description, :capacity, :status, presence: true
end
