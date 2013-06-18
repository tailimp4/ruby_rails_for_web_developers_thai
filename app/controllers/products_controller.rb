class ProductsController < ApplicationController
	before_filter :authenticate_user!, only:[:new,:create]

	def index
		@products = Product.all
	end
	def new
		@product = Product.new
		@products = Product.all
		@categorys = Category.all 
	end
	def create
		@product = Product.new(product_params)
		if @product.save
		 #@products = Product.all
		   #render :index
		  # redirect_to products_path() to index page
		    redirect_to product_path(@product)
		else
			render :new
		end
	end
	def show
		@product = Product.find(params[:id])
	end
	def update
		@product = Product.find(params[:id])
		 @product.save
	end
private
	def product_params
  	params.require(:product).permit(:base_price,:details,:name,:pic1)
	end

end
