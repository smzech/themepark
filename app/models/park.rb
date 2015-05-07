class Park < ActiveRecord::Base
  has_many :attractions
  validates :name, :description, :hours, :status, presence: true
  
  def self.list_for_select
    self.all.map do |park|
      [park.name, park.id]
    end
  end
end
