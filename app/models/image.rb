class Image < ActiveRecord::Base
  default_scope -> { order("position ASC") }
  belongs_to :landing_page

  has_attached_file :photo,
                    :styles => {
                        :thumb=> "100x100#",
                        :small  => "300x300>",
                        :principal => "1228x396#"
                    }

  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  def default_name
    self.name ||= File.basename(photo.filename, '.*').titleize if image
  end
end
