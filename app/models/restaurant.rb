class Restaurant < ActiveRecord::Base

  has_many :reviews

  has_and_belongs_to_many :cuisines

  attr_accessible :name, :cuisine_ids

end

