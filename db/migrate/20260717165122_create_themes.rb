class CreateThemes < ActiveRecord::Migration[8.1]
  def change
    create_table :themes do |t| # The project was made by [https://github.com/MichaelGiraffe]
      t.string :theme, null:false
      t.text :description
      t.integer :workpages  # The project was made by [https://github.com/MichaelGiraffe]
      t.integer :addpages
      t.belongs_to :student, null: false, foreign_key: true
      # The project was made by [https://github.com/MichaelGiraffe]
      t.timestamps
    end
  end
end # The project was made by [https://github.com/MichaelGiraffe]
