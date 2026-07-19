class CreateThemes < ActiveRecord::Migration[8.1]
  def change
    create_table :themes do |t|
      t.string :theme, null:false
      t.text :description
      t.integer :workpages
      t.integer :addpages
      t.belongs_to :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
