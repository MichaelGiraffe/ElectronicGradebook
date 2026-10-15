class CreateCompletes < ActiveRecord::Migration[8.1]
  def change  # The project was made by [https://github.com/MichaelGiraffe]
    create_table :completes do |t|
      t.integer :percent  # The project was made by [https://github.com/MichaelGiraffe]
      t.belongs_to :student, null: false, foreign_key: true
      # The project was made by [https://github.com/MichaelGiraffe]
      t.timestamps
    end
  end
end # The project was made by [https://github.com/MichaelGiraffe]
