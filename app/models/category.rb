class Category < ActiveRecord::Base
  default_scope -> { order("position ASC") }
  has_many :sections

end
