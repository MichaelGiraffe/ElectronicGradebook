class Question < ApplicationRecord
  belongs_to :student
  belongs_to :conf_member
end
