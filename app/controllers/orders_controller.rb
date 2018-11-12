class OrdersController < ApplicationController

  def create
    teddy = Teddy.find(params[:teddy_id])
    order = Order.new(
      state: 'em andamento',
      teddy_sku: teddy.sku,
      amount: teddy.price,
      user_id: current_user.id
    )

    order.save!

    redirect_to new_order_payment_path(order)
  end

  def show
     @order = current_user.orders.find(params[:id])
  end
end
