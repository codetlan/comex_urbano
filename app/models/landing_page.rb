class LandingPage < ActiveRecord::Base
    has_many :images
    has_many :banners
    accepts_nested_attributes_for :images, allow_destroy: true
end
