class LandingPage < ActiveRecord::Base
  has_many :banners, as: :imageable
end
