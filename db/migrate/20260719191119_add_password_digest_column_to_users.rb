class AddPasswordDigestColumnToUsers < ActiveRecord::Migration[8.1]
  def change  # The project was made by [https://github.com/MichaelGiraffe]
    add_column :users, :password_digest, :string  # The project was made by [https://github.com/MichaelGiraffe]
  end # The project was made by [https://github.com/MichaelGiraffe]
end
