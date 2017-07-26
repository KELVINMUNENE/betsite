class User < ActiveRecord::Base
	@@balance = 2000
	has_many(:games)
end
