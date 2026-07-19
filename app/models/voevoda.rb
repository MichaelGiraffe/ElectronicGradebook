class Voevoda < ApplicationRecord
    validates :fio, presence: true

    has_many :students, foreign_key: :voevoda_id

    has_many :consulted_students,
            class_name: "Student",
            foreign_key: :consultant_id
end
