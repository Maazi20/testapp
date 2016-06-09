class ProductsController < ApplicationController




def index
  
    @products = Product.all

respond_to do |format|
        format.html
        format.pdf do
        pdf = Prawn::Document.new
        send_data pdf.render, filename: 'report.pdf', type: 'application/pdf'
      end
    end
     
end

def show
 
  @product = Product.find(params[:id])


  
end


def new
    @test = params[:myhash]
    @product = Product.new
    @otypes = Otype.all

end
def create
    @product = Product.new(post_params)

    if @product.save
      redirect_to products_path, :notice => "Your Product was saved"

    else
      render "new"

    end

end
  


def edit
    
    @product = Product.find(params[:id])
end
def update
    @product = Product.find(params[:id])
    
    if @product.update_attributes(post_params)
      redirect_to products_path, :notice=> "Hi"
    else
      render "edit"

    end

end
def destroy
    @product = Product.find(params[:id])

    @product.destroy
    redirect_to products_path, :notice=>"Product has been deleted"
end
  


private

def post_params

  params.require(:product).permit!
end


end
