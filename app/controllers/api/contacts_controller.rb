class Api::ContactsController < ApplicationController

  before_action :authenticate_user

def index
  @contacts = current_user.contacts

  if params[:search]
    @contacts = @contacts.where("first_name iLIKE ? OR last_name iLIKE ? OR middle_name iLIKE ? OR email iLIKE ? OR bio iLIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
  end
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
    birthday: params[:birthday],
    bio: params[:bio],
    latitude: coordinates[0],
    longitude: coordinates[1],
    user_id: current_user.id
    )
  if @contact.save
    render 'show.json.jbuilder'
  else render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
  end
end



  def update
    @contact = Contact.find(params[:id])
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.middle_name = params[:middle_name] || @contact.middle_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    @contact.birthday = params[:birthday] || @contact.birthday
    @contact.bio = params[:bio] || @contact.bio
    @contact.latitude = coordinates[0] || @contact.latitude
    @contact.longitude = coordinates[1] || @contact.longitude
    if @contact.save
      render 'show.json.jbuilder'
    else render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    render json: {message: "contact successfully destroyed."}
  end

  

end