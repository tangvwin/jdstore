class ProductsController < ApplicationController


   def index
     @products = Product.all
   end

   def show
     @product = Product.find(params[:id])
   end

   def edit
     @product = Product.find(params[:id])
   end

   def new
     @product = Product.new
   end

   def create
     @product = Produt.new(product_params)

     if @prodcut.save
       redirect_to products_path
     else
       render :new
     end
   end


   def update
     @product = Product.find(params[:id])
    if @product.update
      redirect_to products_path
    else
      render :edit
    end
  end

   def destroy
     @product = Product.find(params[:id])
     @prodcut.destroy
     redirect_to prodcuts_path
     flash[:alert] = "Product deleted!"
   end


  def add_to_cart
    @product = Product.find(params[:id])
  current_cart.add_product_to_cart(@product)
  flash[:notice] = "成功加入购物车！"
  redirect_to :back
  end




   private

   def product_params
     params.require(:product).permit(:title, :description, :quantity, :price, :image)
   end



end
