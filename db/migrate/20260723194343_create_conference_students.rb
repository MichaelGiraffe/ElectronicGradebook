class CreateConferenceStudents < ActiveRecord::Migration[8.1]
  def change
    create_table :conference_students do |t|
      t.belongs_to :conference, null: false, foreign_key: true
      t.belongs_to :student, null: false, foreign_key: true
      t.timestamps
    end
  end
end
