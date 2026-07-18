class CreateStudents < ActiveRecord::Migration[8.1]
  def change
    create_table :students do |t|
      t.string :last_name
      t.string :first_name
      t.string :patronymic
      t.integer :thread
      t.string :student_num
      t.string :code
      t.string :profile
      t.string :study_form
      t.belongs_to :voevoda, null: false, foreign_key: true
      t.belongs_to :consultant, null: true, foreign_key: {to_table: :voevodas}

      t.timestamps
    end
  end
end
