class Conference < ApplicationRecord
  has_many :conf_members, dependent: :destroy
  accepts_nested_attributes_for :conf_members, allow_destroy: true, reject_if: proc { |attributes| attributes['user_id'].blank? || attributes['conf_role_id'].blank? }
  
  has_many :conference_students, dependent: :destroy
  has_many :students, through: :conference_students
end