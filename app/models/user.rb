class User < ApplicationRecord
  belongs_to :role

  has_secure_password

  validates :email, presence: true, uniqueness: true

  has_many :conf_members, dependent: :destroy
end
