class CreateConfRoles < ActiveRecord::Migration[8.1]
  def change
    create_table :conf_roles do |t|
      t.string :role

      t.timestamps
    end
  end
end
