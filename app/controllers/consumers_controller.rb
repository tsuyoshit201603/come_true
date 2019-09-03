class ConsumersController < ApplicationController
  def new
    @consumer = Consumer.new
  end

  def create
    consumer = Consumer.new(consumer_params)
    # binding pry
    consumer.save
    redirect_to root_path
  end

  private

  def consumer_params
    params.required(:consumer).permit(:age, :job, :phone_num, :text).merge(user_id: params[:user_id])
  end
end
