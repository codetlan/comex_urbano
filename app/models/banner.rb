class Banner < ActiveRecord::Base
  default_scope -> { order("position ASC, orden ASC") }
  belongs_to :landing_page

  has_attached_file :photo,
                    :styles => {
                        :ads=> "257x374#",
                        :bottom => "1228x170#"
                    }

  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
