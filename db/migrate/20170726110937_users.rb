class Users < ActiveRecord::Migration[5.1]
  def change
  	create_table(:users) do |t|
  		t.column(:amount, :int)
  		t.column(:selection, :int)
  		t.column(:game, :string)
  		

  		t.timestamp()
  	end

  end
end
