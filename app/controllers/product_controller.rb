class ProductController < ApplicationController

	def product_params
	   params.require(:product).permit(:name, :price, :category_id, :audience_id)
	end

	def home

	end	

	def add_product
		@category = Category.all
		@audience = Audience.all
	end	

	def list_product
		@products = Product.all
	end	

	def search_product
		redirect_to :action => 'list_product'
	end	

	def show_product
	  @product = Product.find(params[:id])
	end		

	def delete
		Product.find(params[:id]).destroy
		redirect_to :action => 'list_product'
	end

	def edit
		@product = Product.find(params[:id])
	end	

	def update
	  	@product = Product.find(params[:id])
	  	if @product.update_attributes(product_params)
			redirect_to :action => 'show_product', :id => @product
	   end
	end

	def create
		puts "Saving products"
		@products = Product.new(product_params)
		if @products.save
	      redirect_to :action => 'home'
	   end
	end	
end
