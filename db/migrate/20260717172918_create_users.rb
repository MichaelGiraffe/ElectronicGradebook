class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :patronymic
      t.belongs_to :role, foreign_key: true
      t.text :about

      t.timestamps
    end
  end
end
