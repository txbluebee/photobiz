class AccountsController < ApplicationController
  def show
    @orders = current_user.account.orders
  end
end
