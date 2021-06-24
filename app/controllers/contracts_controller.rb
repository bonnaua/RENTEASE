class ContractsController < ApplicationController
  def index
    @contracts = Contract.all
  end

  def new
    @contract = Contract.new
  end

  private

  def set_contract
    @contract = Contract.find(params[:id])
  end

  def contract_params
    params.require(:contract).permit(:start_date, :end_date, :rent_due_date, :rent, :rental_expenses)
  end
end
