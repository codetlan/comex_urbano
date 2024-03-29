class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to contact_path, notice: 'Tu mensaje ha sido enviado Correctamente. Nos pondremos en contacto contigo.' }
        format.json { redirect_to contact_path, status: :created, location: @contact }
      else
        format.html { redirect_to contact_path }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end


  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def contact_params
    params.require(:contact).permit(:name, :lastname, :email, :message, :subject)
  end
end
