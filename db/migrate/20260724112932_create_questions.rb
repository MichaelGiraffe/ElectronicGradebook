class CreateQuestions < ActiveRecord::Migration[8.1]
  def change
    create_table :questions do |t|
      t.references :conference_student, null: false, foreign_key: true
      t.references :conf_member, null: false, foreign_key: true
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end
