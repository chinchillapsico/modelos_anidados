class ProductsController < ApplicationController

    def create
        @product = Product.new(product_params)
        @product.category = Category.find(params[:category_id])
        @product.save
        
        redirect_to @product.category, notice: 'Guardado'
    end 
    #producto tiene nombre y precio, además category id en este punto se unen ambos modelos por el id de la categoria. esto puedo  verlo en routes, cundo veo id es porque por url se está dando un id a un elemnto, por tanto puedo usarlo parar relacionar.   
    
    def destroy
        @product = Product.find(params[:id])
        @category = @product.category # jeje
        @product.destroy
        redirect_to @category, alert: 'Producto eliminado'

    end     
    
    
    
    private
    def product_params
        params.require(:product).permit(:name, :price)
    end
end
