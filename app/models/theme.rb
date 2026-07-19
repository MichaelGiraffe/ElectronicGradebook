class Theme < ApplicationRecord
  validates :theme, presence: true
  
  belongs_to :student
end
