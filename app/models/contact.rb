class Contact < ActiveRecord::Base
  after_create :deliver_contact_email

  def deliver_contact_email
    NotificationsMailer.new_message(self.name, self.lastname, self.email, self.subject, self.message).deliver
  end
end
