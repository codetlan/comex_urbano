class LandingPage < ActiveRecord::Base
    has_many :banners, :dependent => :destroy

    accepts_nested_attributes_for :banners, :allow_destroy => true
end
