class AddQualificationToStudents < ActiveRecord::Migration[8.1]
  def change
    add_column :students, :qualification, :string
  end
end