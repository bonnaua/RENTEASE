class RentersController < ApplicationController
  before_action :set_renter, only: [:show, :destroy, :edit, :update]

  def index

    #search bar
    @renters_search = []
    if params[:query].present?
      @renters_search = Renter.global_search(params[:query])
    end

    @renters = Renter.all
  end

  def show
  end

  def create
    @renter = Renter.new(renter_params)
    @contract = Contract.find(params[:contract_id])
    @renter.save!

    @renter_contract = RenterContract.create(contract: @contract, renter: @renter)

    redirect_to new_housing_document_path(@contract.housing)
  end

  def new
    @renter = Renter.new
    @contract = Contract.find(params[:contract_id])
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
    params.require(:renter).permit(:first_name, :last_name, :email, :phone_number, :description, :photo)
  end
end
