class ConfMember < ApplicationRecord
  belongs_to :conference
  belongs_to :user
  belongs_to :conf_role
end
