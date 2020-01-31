class Park < ApplicationRecord
  validates :name, presence: true
  validates :type_of_park, presence: true
end
