class CreateGrades < ActiveRecord::Migration[8.1]
  def change
    create_table :grades do |t|
      t.integer :grade
      t.string :qualification
      t.boolean :honors
      t.belongs_to :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
