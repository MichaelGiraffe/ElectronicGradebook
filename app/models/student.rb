class Student < ApplicationRecord
  belongs_to :voevoda
  belongs_to :consultant, class_name: "Voevoda", optional: true

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :student_num, presence: true, uniqueness: true
  validates :code, presence: true
  validates :profile, presence: true
  validates :study_form, presence: true
  validates :voevoda, presence: true

  has_many :grades, dependent: :destroy
  has_one :theme, dependent: :destroy
end
