class Conference < ApplicationRecord
    validates :date, presence: true

    has_many :conf_members
end
