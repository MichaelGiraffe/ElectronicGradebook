class CreateCompletes < ActiveRecord::Migration[8.1]
  def change
    create_table :completes do |t|
      t.integer :percent
      t.belongs_to :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
