class ResourcesController < ApplicationController
# retun json.
  def index
    @data = Resource.list_of_services
  end


  def new
    @test = { name: "Stranger" }

  end

   # new_merchant_product_path	GET	/merchants/:merchant_id/products/new
# def new
#   @product = @current_merchant.products.new
# end
#
# # merchant_products_path POST	/merchants/:merchant_id/products
# def create
#   @product = @current_merchant.products.new(product_params)
#   if @product.save
#     redirect_to products_path
#   else
#     #TODO Put flash notice here maybe.
#     render :new, status: 400
#   end
# end


end
