class ExpensesController < ApplicationController
  def index
    @expenses = Expense.all
  end

  def show
    @expense = Expense.find(params[:id])
  end

  def new
  end

  def create
    @expense = Expense.new(expense_params)
    if @expense.save
      render :show
    end
  end

  def update
    expense = Expense.find(params[:id])
    expense.update_attributes(expense_params)
    render :show
  end

  def delete
    expense = Expense.find(params[:id])
    expense.destroy
  end

  private

  def expense_params
    params.require(:expense).permit(:date,
                                    :category_id,
                                    :account_id,
                                    :note,
                                    :amount_attributes => [:value])
  end
end
