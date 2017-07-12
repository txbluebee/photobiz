class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, success: "Product successfully added!"
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:success] = "Product successfully updated"
      respond_to do |format|
        format.html { redirect_to @product }
        format.js
      end
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.comments.each do |comment|
      comment.destroy
    end
    @product.destroy
    redirect_to products_path, danger: 'Product successfully deleted'
  end

  private

  def product_params
    params.require(:product).permit(:image, :name, :description, :price)
  end
end
