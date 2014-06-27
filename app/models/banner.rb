class Banner < ActiveRecord::Base
  belongs_to :imageable , polymorphic: true

  validates_presence_of :photo

  has_attached_file :photo, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>'
  }

end
