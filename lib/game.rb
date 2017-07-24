class Game < ActiveRecord::Base
    validates(:amount, :presence => true)
  end
  