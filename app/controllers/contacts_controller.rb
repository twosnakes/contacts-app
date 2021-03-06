class ContactsController < ApplicationController


  def index
    @contacts = Contact.all
  end

  def new

  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      middle_name: params[:middle_name]
      )
    @contact.save
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    contact = Contact.find(params[:id])
      contact.assign_attributes(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      middle_name: params[:middle_name]
      )
    contact.save
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
  end




end
