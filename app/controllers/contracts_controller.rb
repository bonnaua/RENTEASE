class ContractsController < ApplicationController
  def index
    @contracts = Contract.all
  end

  def new
    @contract = Contract.new
    @housing = Housing.find(params[:housing_id])
  end

  def create
    @contract = Contract.new(contract_params)
    @housing = Housing.find(params[:housing_id])
    @contract.housing = @housing
    if @contract.save
      redirect_to new_contract_renter_path(@contract)
    else
     render :new
    end
  end

  private

  def set_contract
    @contract = Contract.find(params[:id])
  end

  def contract_params
    params.require(:contract).permit(:start_date, :end_date, :rent_due_date, :rent, :rental_expenses)
  end
end
