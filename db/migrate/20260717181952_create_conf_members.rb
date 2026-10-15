class CreateConfMembers < ActiveRecord::Migration[8.1]
  def change
    create_table :conf_members do |t|
      t.belongs_to :conference, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :conf_role, null: false, foreign_key: true
      # The project was made by [https://github.com/MichaelGiraffe]
      t.timestamps
    end# The project was made by [https://github.com/MichaelGiraffe]
  end# The project was made by [https://github.com/MichaelGiraffe]
end
