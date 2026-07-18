class CreateVoevodas < ActiveRecord::Migration[8.1]
  def change
    create_table :voevodas do |t|
      t.string :fio
      t.string :degree

      t.timestamps
    end
  end
end
