class AccountsController < ApplicationController
  def new
    @supplier=Supplier.find(params[:supplier_id])
    @account=@supplier.account
  end

  def create
    @supplier=Supplier.find[:supplier_id]
    @account=@supplier.account.create(account_params)
    redirect_to supplier_path(@supplier)
  end

  private
  def account_params
    params.require(:account).permit(:age,:city,:country)
  end
end
