class RenterContractsController < ApplicationController

  def index
    @renter_contracts = RenterContract.all
  end

  def show
  end

  def create
    @renter_contract = RenterContract.new(renter_contract_params)
    @contract = Contract.find(params[:renter_contract][:contract_id])
    @renter_contract.contract = @contract
    @renter_contract.save!

    redirect_to renter_contracts_path
  end

  def new
    @renter_contract = Renter.new
  end

  def destroy
    @renter_contract.destroy if current_user == @renter_contract.user
    redirect_to my_renter_contracts_path
  end

  def edit
  end

  private

  def set_renter_contract
    @renter = RenterContract.find(params[:id])
  end

  def renter_contract_params
    params.require(:renter_contract).permit(:renter_id, :contract_id)
  end

end
