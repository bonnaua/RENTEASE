class DashboardController < ApplicationController
  def index
    @expenses = Expense.joins(:housing).where(housings: { user: current_user })
    @expenses_amount_by_month = Expense.joins(:housing).where(housings: { user: current_user }).order(:created_at).group(:created_at).sum(:amount)
    @rent_amount_by_month = Contract.joins(:housing).where(housings: { user: current_user }).order(:rent_due_date).group(:rent_due_date).sum(:rent)
  end
end
