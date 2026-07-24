class ConferenceStudent < ApplicationRecord
  belongs_to :conference
  belongs_to :student

  has_many :questions, dependent: :destroy
end
