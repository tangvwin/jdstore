class Admin::ProductsController < ApplicationController

  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required
  before_action :validate_search_key, only: [:search]

      def index
        @products = Product.all
        @products =Product.paginate(:page => params[:page], :per_page => 5)
      end



      def new
        @product = Product.new
      end

      def edit
        @product = Product.find(params[:id])
      end

      def update
        @product =  Product.find(params[:id])

        if @product.update(product_params)
          redirect_to admin_products_path
        else
          render :edit
        end
      end




      def create
        @product = Product.new(product_params)

         if @product.save
           redirect_to admin_products_path
         else
           render :new
         end
       end

       def destroy
         @product = Product.find(params[:id])
         @product.destroy
        redirect_to admin_products_path,alert: 'Group delete'

      end


      def search
        if @quary_string.present?
          search_result = Product.ransack(@search_criteria).result(:distinct => true)
          @products = search_result.paginate(:page => params[:page], :per_page =>5)
        end
      end

      protected

  def validate_search_key
    @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
    @search_criteria = search_criteria(@query_string)
  end


  def search_criteria(query_string)
    { :title_cont => query_string }
  end


       private

       def product_params
         params.require(:product).permit(:title, :description, :quantity, :price, :image)
       end


end
