class Admin::ProductsController < Admin::BaseController
  def index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_products_path, notice: 'Product added'
    else
      render :new
    end
  end

  def edit
  end

  def upudate
  end

  def destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :vendor_id, :list_price, :sell_price)
  end
end
