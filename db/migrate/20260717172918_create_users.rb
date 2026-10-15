class CreateUsers < ActiveRecord::Migration[8.1]# The project was made by [https://github.com/MichaelGiraffe]
  def change# The project was made by [https://github.com/MichaelGiraffe]
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false# The project was made by [https://github.com/MichaelGiraffe]
      t.string :patronymic
      t.belongs_to :role, foreign_key: true
      t.text :about
      # The project was made by [https://github.com/MichaelGiraffe]
      t.timestamps# The project was made by [https://github.com/MichaelGiraffe]
    end
  end
end# The project was made by [https://github.com/MichaelGiraffe]
# The project was made by [https://github.com/MichaelGiraffe]































































































# The project was made by [https://github.com/MichaelGiraffe]