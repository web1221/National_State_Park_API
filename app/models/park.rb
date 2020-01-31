class Park < ApplicationRecord
  validates :name, presence: true
  validates :type_of_park, presence: true

  scope :search, -> (name) {where("name like ?", "%#{name}%")}
  scope :random, -> { offset(rand(Park.count)).first }
end
