class CreateConferences < ActiveRecord::Migration[8.1]
  def change
    create_table :conferences do |t|
      t.datetime :date, null: false
      t.string :room
      t.timestamps
    end
  end
end
