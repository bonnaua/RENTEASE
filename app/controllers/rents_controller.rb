class RentsController < ApplicationController
  before_action :set_rent, only: [:show, :destroy, :edit, :update]

  def index
    @rents = Rent.all

    # @rents = rents.joins(:housing).where(housings: { user: current_user })
    @housings = Housing.where(user: current_user)
  end

  def show
  end

  def new
    @rent = Rent.new
  end

  def create
    @rent = Rent.new(rent_params)
    @contract = Contract.find(params[:rent][:contract_id])
    @rent.contract = @contract
    @rent.housing = @contract.housing
    if @rent.save!
      redirect_to rent_path(@rent)
    else
      render :new
    end
  end

  def destroy
    @rent.destroy if current_user == @rent.user
    redirect_to my_rents_path
  end

  def edit
  end

  def update
    @rent.update(rent_params)

    redirect_to rent_path(@rent)
  end

  private

  def set_rent
    @rent = Rent.find(params[:id])
  end

  def rent_params
    params.require(:rent).permit(:amount, :name, :date, :housing)
  end
end
