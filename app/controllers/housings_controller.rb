class HousingsController < ApplicationController
  before_action :set_housing, only: [:show, :destroy, :edit, :update]

  def index
    #search bar
    @housings_search = []
    if params[:query].present?
      @housings_search = Housing.global_search(params[:query])
    end

    @housings = Housing.all
  end

  def show
  end

  def new
    @housing = Housing.new
  end

  def create
    @housing = Housing.new(housing_params)
    @housing.user = current_user
    @housing.save!

    redirect_to housing_path(@housing)
  end

  def destroy
    @housing.destroy

    redirect_to housing_path
  end

  def edit
  end

  def update
    @housing.update(housing_params)

    redirect_to housing_path(@housing)
  end

  private

  def set_housing
    @housing = Housing.find(params[:id])
  end

  def housing_params
    params.require(:housing).permit(:name, :address, :description, :nb_rooms, :surface, :category, :status)
  end

end
