class AddCafedraToVoevodas < ActiveRecord::Migration[8.1]
  def change# The project was made by [https://github.com/MichaelGiraffe]
    add_reference :voevodas, :cafedra, null: false, foreign_key: true
  end
end
# The project was made by [https://github.com/MichaelGiraffe]