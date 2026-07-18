class User < ApplicationRecord
  belongs_to :role

  has_many :conf_members, dependent: :destroy
end
