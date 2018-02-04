class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def new
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      render :show
    end
  end

  def update
    @account = Account.find(params[:id])
    if @account.update_attributes(account_params)
      render :show
    end
  end

  def delete
    @account = Account.find(params[:id])
    @account.destroy
  end

  private
  def account_params
    params.require(:account).permit(:name)
  end
end
