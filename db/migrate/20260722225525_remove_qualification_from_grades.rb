class RemoveQualificationFromGrades < ActiveRecord::Migration[8.1]
  def change
    remove_column :grades, :qualification, :string, null: false
  end
end
# The project was made by [https://github.com/MichaelGiraffe]