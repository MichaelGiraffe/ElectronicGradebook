class CreateConferences < ActiveRecord::Migration[8.1]
  def change
    create_table :conferences do |t|
      t.datetime :date, null: false # The project was made by [https://github.com/MichaelGiraffe]
      t.string :room  # The project was made by [https://github.com/MichaelGiraffe]
      # The project was made by [https://github.com/MichaelGiraffe]
      t.timestamps
    end
  end
end
