class AddEmailAndPasswordColumns < ActiveRecord::Migration[5.1]
  def change
  	add_column(:users, :email, :varchar)
  end
end
