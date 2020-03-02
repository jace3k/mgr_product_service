class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: { data: products }
  end

  def show
    product = Product.new(permit_params)
    if product.save
      render json: { data: product }, status: :ok
    else
      render json: { error: "Error." }, status: 404
    end
  end

  def destroy
    product = Product.find(params[:id]).destroy
    render json: { data: product }
  end
  
  private

  def permit_params
    params.permit(:name, :price, :category)
  end
end
