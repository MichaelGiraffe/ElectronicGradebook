class ConfRole < ApplicationRecord
    validates :role, presence: true

    has_many :conf_members
end
