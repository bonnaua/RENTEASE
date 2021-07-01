class DocumentsController < ApplicationController

  def index
    @documents = Document.joins(:housing).where(housings: { user: current_user })
    @housings = Document.where(user: current_user)
  end

  def show
  end

  def create
    @document = Document.new(document_params)
    @housing = Housing.find(params[:housing_id])
    @document.housing = @housing
    if @document.save
      redirect_to housing_path(@housing)
    else
      render :new
    end
  end

  def new
    @document = Document.new
    @housing = Housing.find(params[:housing_id])
  end

private

  def set_document
    @document = Document.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:name, :category, :housing_id, :pages)
  end
end
