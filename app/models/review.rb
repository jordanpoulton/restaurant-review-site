class Review < ActiveRecord::Base
  belongs_to :restaurants
  attr_accessible :text
end
