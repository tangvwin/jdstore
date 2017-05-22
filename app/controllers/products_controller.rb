class ProductsController < ApplicationController


   def index
     @products = Product.all.order("position ASC")
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
     @product = Product.new(product_params)

     if @product.save
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
     @product.destroy
     redirect_to products_path
     flash[:alert] = "Product deleted!"
   end


  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
  current_cart.add_product_to_cart(@product)
  flash[:notice] = "您已经成功将#{@product.title}加入购物车！"
else
  flash[:warning] = "您的购物车内已有此物品！"
end
  redirect_to :back
  end




   private

   def product_params
     params.require(:product).permit(:title, :description, :quantity, :price, :image)
   end



end
