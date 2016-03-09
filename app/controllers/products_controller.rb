class ProductsController < ApplicationController

	before_action :set_store
	before_action :set_product, except: [:create]

	def create
		@product = @store.products.create(product_params)
		redirect_to @store
	end

	def destroy
		if @product.destroy
			flash[:success] = "Product item was deleted."
		else
			flash[:error] = "Product item could not be deleted."
		end
		redirect_to @store
	end

	# def complete
	# 	@product.update_attribute(:completed_at, Time.now)
	# 	redirect_to @store, notice: "Product item completed"
	# end

	private

	def set_store
		@store = Store.find(params[:store_id])
	end

	def set_product
		@product = @store.products.find(params[:id])
	end

	def product_params
		params[:product].permit(:product_name, :product_price, :product_aisle_number)
	end
end