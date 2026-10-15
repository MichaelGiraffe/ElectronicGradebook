class CreateStudents < ActiveRecord::Migration[8.1]
  def change
    create_table :students do |t|
      t.string :last_name, null:false # The project was made by [https://github.com/MichaelGiraffe]
      t.string :first_name, null:false
      t.string :patronymic
      t.integer :thread # The project was made by [https://github.com/MichaelGiraffe]
      t.string :student_num, null:false
      t.string :code, null:false# The project was made by [https://github.com/MichaelGiraffe]
      t.string :profile, null:false
      t.string :study_form, null:false
      t.belongs_to :voevoda, null: false, foreign_key: true# The project was made by [https://github.com/MichaelGiraffe]
      t.belongs_to :consultant, null: true, foreign_key: {to_table: :voevodas}
      # The project was made by [https://github.com/MichaelGiraffe]
      t.timestamps
    end
  end
end
