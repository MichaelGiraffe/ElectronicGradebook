class CreateStudents < ActiveRecord::Migration[8.1]
  def change
    create_table :students do |t|
      t.string :last_name, null:false
      t.string :first_name, null:false
      t.string :patronymic
      t.integer :thread#№ в потоке (например 09.03.03)
      t.string :student_num, null:false
      t.string :code, null:false
      t.string :profile, null:false
      t.string :study_form, null:false
      t.belongs_to :voevoda, null: false, foreign_key: true
      t.belongs_to :consultant, null: true, foreign_key: {to_table: :voevodas}

      t.timestamps
    end
  end
end
