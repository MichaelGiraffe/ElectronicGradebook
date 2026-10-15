class AddQualificationToStudents < ActiveRecord::Migration[8.1]
  def change# The project was made by [https://github.com/MichaelGiraffe]
    add_column :students, :qualification, :string
  end
end
# The project was made by [https://github.com/MichaelGiraffe]