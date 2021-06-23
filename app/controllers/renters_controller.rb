class RentersController < ApplicationController
  before_action :set_renter, only: [:show, :destroy, :edit, :update]

  def index
    @renters = Renter.all
  end


  def show
  end

  def new
    @renter = Renter.new
  end

  def create
    @renter = Renter.new(renter_params)
    @renter.user = current_user
    @renter.save!

    redirect_to renter_path(@renter)
  end

  def destroy
    @renter.destroy if current_user == @renter.user
    redirect_to my_renters_path
  end

  def edit
  end

  def update
    @renter.update(renter_params)

    redirect_to renter_path(@renter)
  end

  private

  def set_renter
    @renter = Renter.find(params[:id])
  end

  def renter_params
    params.require(:renter).permit(:first_name, :last_name, :email, :phone_number, :description)
  end
end


