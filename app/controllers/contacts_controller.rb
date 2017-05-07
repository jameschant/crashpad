class ContactsController < ApplicationController
  
  # GET request to /contact-us
  # Show new contact form
  def new
    @contact = Contact.new
  end
  
  # POST request /contacts 
  def create
    #Mass assignment of form fields into contact object
    @contact = Contact.new(contact_params)
    # Save the Contact object to the database
    if @contact.save
      # Store form fields via parameters, into variables
      name = params[:contact][:name]
      email = params[:contact][:email]
      phone = params[:contact][:phone]
      uni = params[:contact][:uni]
      groupsize = params[:contact][:groupsize]
      body = params[:contact][:comments]
      
      # Plug variables into Contact Mailer email method 
      # and send email
      ContactMailer.contact_email(name, email, phone, uni, groupsize, body).deliver
      # Store success message in flash has
      # and redirect to the new action
      flash[:success] = "Message sent."
      redirect_to new_contact_path
    else
      # If Contact object doesn't save,
      # store errors in flash hash,
      # and redirect to the new action
      flash[:danger] = @contact.errors.full_messages.join(", ")
      redirect_to new_contact_path
    end
  end
  
  private
  # To collect data from form, we need to use 
  # strong parameters and whitelist the form fields
    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :uni, :groupsize, :comments)
    end
end