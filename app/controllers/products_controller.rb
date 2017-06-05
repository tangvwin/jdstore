class ProductsController < ApplicationController

  before_action :validate_search_key, only: [:search]

   def index
     @products = Product.all.order("position ASC").paginate(:page => params[:page], :per_page =>8)
   end

   def show
     @product = Product.find(params[:id])
     @photos = @product.photos.all
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

       if params[:photos] != nil
      @product.photos.destroy_all   #先清除原有的图片

      params[:photos]['avatar'].each do |a|
        @photo = @product.photos.create(:avatar => a)
      end
    end

    if @product.update(product_params)
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


  def discount_price
    @product = Product.find(params[:id])
    if @product.discount.present?()
      @product.price = @product.price * (@product.discount / 100 )
    end
  end

  def search
    if @query_string.present?
         search_result = Product.ransack(@search_criteria).result(:distinct => true)
           @products = search_result.paginate(:page => params[:page], :per_page => 5 )
           end
         end

         protected

          def validate_search_key
              @query_string = params[:q].gsub(/\\|\'|\/|\?/, "")
              if params[:q].present?
                 @search_criteria = search_criteria(@query_string)
                end
              end


                 def search_criteria(query_string)
                      { :title_or_description_cont => query_string }
                     end








   private

   def product_params
     params.require(:product).permit(:title, :description, :quantity, :price, :image, :avatar)
   end



end
