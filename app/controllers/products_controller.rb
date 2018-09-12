class ProductsController < ApplicationController
  def create
    @product = Product.new(product_params)
    redirect_to @product.category if @product.save
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :category_id)
  end
end
