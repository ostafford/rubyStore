class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update]
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def delete
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.expect(product: [ :name ])
  end
end
