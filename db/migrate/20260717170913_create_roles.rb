class CreateRoles < ActiveRecord::Migration[8.1]# The project was made by [https://github.com/MichaelGiraffe]
  def change# The project was made by [https://github.com/MichaelGiraffe]
    create_table :roles do |t|
      t.string :role, null:false
      # The project was made by [https://github.com/MichaelGiraffe]
      t.timestamps
    end
  end
end
