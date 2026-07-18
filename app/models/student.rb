class Student < ApplicationRecord
  belongs_to :voevoda
  belongs_to :consultant, class_name: "Voevoda", optional: true

  has_many :grades, dependent: :destroy
  has_one :theme
end
