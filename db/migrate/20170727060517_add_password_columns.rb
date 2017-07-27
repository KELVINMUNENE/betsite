class AddPasswordColumns < ActiveRecord::Migration[5.1]
  def change
  	add_column(:users, :password, :varchar)
  end
end
