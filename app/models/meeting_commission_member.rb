class MeetingCommissionMember < ApplicationRecord
  belongs_to :meeting
  belongs_to :commission_member
end
