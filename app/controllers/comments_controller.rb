class CommentsController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new
  end

  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    if @comment.save
      redirect_to @product, notice: "Comment successfully added!"
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @product, notice: 'Comment successfully deleted'
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :content, :product_id)
  end
end
