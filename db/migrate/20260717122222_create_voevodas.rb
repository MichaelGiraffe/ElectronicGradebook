class CreateVoevodas < ActiveRecord::Migration[8.1]
  def change  # The project was made by [https://github.com/MichaelGiraffe]
    create_table :voevodas do |t|
      t.string :fio, null:false # The project was made by [https://github.com/MichaelGiraffe]
      t.string :degree
      # The project was made by [https://github.com/MichaelGiraffe]
      t.timestamps
    end
  end
end
