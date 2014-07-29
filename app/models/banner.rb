class Banner < ActiveRecord::Base
  belongs_to :landing_page

  has_attached_file :photo,
                    :styles => {
                        :ads=> "257x374#",
                        :small  => "300x300>",
                        :main_banner => "1228x396#"
                    }

  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
