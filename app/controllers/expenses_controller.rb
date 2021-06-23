class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :destroy, :edit, :update]

  def index
    @expenses_search = []
    if params[:query].present?
      @expenses_search = Expense.global_search(params[:query])
    end

    @expenses = Expense.all
  end

  def show
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.user = current_user
    @expense.save!

    redirect_to expense_path(@expense)
  end

  def destroy
    @expense.destroy

    redirect_to expense_path
  end

  def edit
  end

  def update
    @expense.update(expense_params)

    redirect_to expense_path(@expense)
  end

  private

  def set_expense
    @expense = Expense.find(params[:id])
  end

  def expense_params
    params.require(:expense).permit(:name, :category, :description, :amount)
  end
end
