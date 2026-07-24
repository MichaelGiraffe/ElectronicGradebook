class Question < ApplicationRecord
  belongs_to :conference_student
  belongs_to :conf_member
end
