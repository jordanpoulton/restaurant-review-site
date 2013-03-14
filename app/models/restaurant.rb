class Restaurant < ActiveRecord::Base

  has_many :reviews

  attr_accessible :name

end

