class CreateQuestions < ActiveRecord::Migration[8.1]
  def change
    create_table :questions do |t|
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :conf_member, null: false, foreign_key: true
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end
