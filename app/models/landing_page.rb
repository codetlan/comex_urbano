class LandingPage < ActiveRecord::Base
    has_many :banners, :dependent => :destroy
end
