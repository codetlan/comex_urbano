class Banner < ActiveRecord::Base
  belongs_to :landing_page

  has_attached_file :photo, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>',
      big: '1228x396'
  }

  do_not_validate_attachment_file_type :photo
end
