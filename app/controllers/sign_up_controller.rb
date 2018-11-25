class SignUpController < ApplicationController
  #skip_before_action :authenticate_user, :authenticate_admin
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to login_path, notice: 'Signed Up successfully.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def customer_params
      params.require(:customer).permit(:name, :address, :email, :contact_number, :password)
  end
end
