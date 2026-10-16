class AddCafedraToVoevodas < ActiveRecord::Migration[8.1]
  def change
    add_reference :voevodas, :cafedra, null: false, foreign_key: true
  end
end