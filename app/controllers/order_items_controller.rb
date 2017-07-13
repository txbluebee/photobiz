class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @order.account = current_user.account
    @item = @order.order_items.new(item_params)
    @order.save
    session[:order_id] = @order.id
    binding.pry
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    respond_to do |format|
      format.js
    end

  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
