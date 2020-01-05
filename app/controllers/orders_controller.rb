class OrdersController < ApplicationController
	before_action :allowed?, only: [:new, :create, :show, :edit]

	def create
    puts "========================================"
		print session[:cart]
    puts
    puts "========================================"
    @order = Order.new(user: current_user, total_price: 0 )

    if @order.save
      session[:cart].each do |sound_id|
        sound_id = sound_id.to_i
        sound = Sound.find(sound_id)
  
        item = OrderItem.new()
        item.order = @order
        item.sound = sound
        item.save

        @order.total_price += sound.price 
        @order.save
      end
      session[:cart] = []
      redirect_to profile_path(current_user), notice: 'Sipariş başarılı..'
    else
      render :new
    end
	end

	def show

	end

	def cart_item_params
    params.require(:cart_item).permit!
  end
end
