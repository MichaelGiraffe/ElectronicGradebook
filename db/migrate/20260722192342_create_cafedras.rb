class CreateCafedras < ActiveRecord::Migration[8.1]
  def change
    create_table :cafedras do |t|
      t.string :name
      
      t.timestamps
    end
  end
end