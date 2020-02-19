class OrdersController < ApplicationController
  before_action :set_order, only: %i[show]
  before_action :set_form_dependencies, only: %i[new]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def show
    @order_item = @order.order_items.build
    @products = Product.all
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to order_path(@order)
    else
      render :new
    end
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def set_form_dependencies
    @warehouses = Warehouse.all
  end

  def order_params
    params.require(:order).permit(:warehouse_id, :customer_name)
  end
end
