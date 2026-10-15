class CreateGrades < ActiveRecord::Migration[8.1] # The project was made by [https://github.com/MichaelGiraffe]
  def change  # The project was made by [https://github.com/MichaelGiraffe]
    create_table :grades do |t|
      t.integer :grade, null:false  # The project was made by [https://github.com/MichaelGiraffe]
      t.string :qualification, null:false # The project was made by [https://github.com/MichaelGiraffe]
      t.boolean :honors, null:false
      t.belongs_to :student, null: false, foreign_key: true
      # The project was made by [https://github.com/MichaelGiraffe]
      t.timestamps
    end
  end
end
