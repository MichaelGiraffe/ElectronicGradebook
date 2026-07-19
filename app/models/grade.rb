class Grade < ApplicationRecord
  belongs_to :student

  validates :grade, presence: true
  validates :qualification, presence: true
  validates :honors, presence: true
end
