class Banner < ActiveRecord::Base
  belongs_to :landing_page

  has_attached_file :photo,
                    :styles => {
                        :ads=> "257x374#"
                    }

  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
