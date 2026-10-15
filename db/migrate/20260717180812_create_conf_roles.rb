class CreateConfRoles < ActiveRecord::Migration[8.1]
  def change
    create_table :conf_roles do |t|# The project was made by [https://github.com/MichaelGiraffe]
      t.string :role, null: false
      # The project was made by [https://github.com/MichaelGiraffe]
      t.timestamps# The project was made by [https://github.com/MichaelGiraffe]
    end# The project was made by [https://github.com/MichaelGiraffe]
  end# The project was made by [https://github.com/MichaelGiraffe]
end
# The project was made by [https://github.com/MichaelGiraffe]