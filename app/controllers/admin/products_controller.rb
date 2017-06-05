class Admin::ProductsController < ApplicationController


  layout "admin"
  before_action :authenticate_user!
  before_action :admin_required


   def index
     @products = Product.all.order("position ASC").paginate(:page => params[:page], :per_page =>8)
   end



   def new
     @product = Product.new
     @photo = @product.photos.build #在内存新建多图对象，build多用于一对多的情况
   end


   def create
     @product = Product.new(product_params)

     if @product.save
          if params[:photos] != nil
       params[:photos]['avatar'].each do |a|
          @photo = @product.photos.create(:avatar => a)
      end
    end
       redirect_to admin_products_path
     else
       render :new
     end
   end


   def edit
     @product = Product.find(params[:id])
   end

   def update
     @product = Product.find(params[:id])

     if params[:photos] != nil
       @product.photos.destroy_all

       params[:photos]['avatar'].each do |a|
         @picture = @product.photos.create(:avatar => a)
       end

      @product.update(product_params)
       redirect_to admin_products_path
     elsif @product.update(product_params)
      redirect_to admin_products_path
     else
       render :edit
     end
   end

   def show
     @product = Product.find(params[:id])
   end


  def move_up
    @product = Product.find(params[:id])
    @product.move_higher
    redirect_to :back


  end

  def move_down
    @product = Product.find(params[:id])
    @product.move_lower
    redirect_to :back
  end






   private

   def product_params
     params.require(:product).permit(:title, :description, :quantity, :price, :discount, :avatar)
   end

 end
