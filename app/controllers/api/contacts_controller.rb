class Api::ContactsController < ApplicationController

def contact_action
  @contacts = Contact.first
  render 'contact.json.jbuilder'
end

def index
  @contacts = Contact.all
  render 'index.json.jbuilder'
end

def show
  @contact = Contact.find(params[:id])
  render 'show.json.jbuilder'
end

def create
  @contact = Contact.new(
    first_name: params[:first_name],
    middle_name: params[:middle_name],
    last_name: params[:last_name],
    email: params[:email],
    phone_number: params[:phone_number],
    birthday: params[:birthday]
    )
    @contact.save
  render 'show.json.jbuilder'
end

end

  def update
    @contact = Contact.find(params[:id])
    
    render 'show.json.jbuilder'
  end

