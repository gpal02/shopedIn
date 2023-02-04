# frozen_string_literal: true

class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      @order.update(order_number: "od-#{@order.id.to_s.rjust(6, '0')}")
      redirect_to @order
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])

    if @order.update(order_params)
      redirect_to @order
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def order_params
    params.require(:order).permit(:order_number, :person_name, :delivery_contact, :delivery_address, :delivery_city,
                                  :delivery_state, :delivery_pin_code)
  end
end
