class DashboardController < ApplicationController
  def index
    @expenses = Expense.joins(:housing).where(housings: { user: current_user })
    @expenses_amount_by_month = Expense.joins(:housing).where(housings: { user: current_user }).order(:created_at).group(:created_at).sum(:amount)
    @rent_amount_by_month = Contract.joins(:housing).where(housings: { user: current_user }).order(:rent_due_date).group(:rent_due_date).sum(:rent)

    @expenses_over_the_last_year = Expense.joins(:housing).where(housings: { user: current_user }).where( created_at: "2019-01-01".. ).sum(:amount)
    @rents_over_the_last_year = Contract.joins(:housing).where(housings: { user: current_user }).where( rent_due_date: "2019-01-01".. ).sum(:rent)
    @profit_over_the_last_year = @rents_over_the_last_year - @expenses_over_the_last_year

    @expenses_two_years = Expense.joins(:housing).where(housings: { user: current_user }).where( created_at: "2017-01-01".."2018-01-01").sum(:amount)
    @rents_two_years = Contract.joins(:housing).where(housings: { user: current_user }).where( rent_due_date: "2017-01-01".."2017-01-01").sum(:rent)
    @profit_two_years = @rents_two_years - @expenses_two_years
  end
end
