class Park < ApplicationRecord
  validates :name, presence: true
  validates :type_of_park, presence: true

  scope :search, -> (name) {where("name like ?", "%#{name}%")}
end
