class BusinessesController < ApplicationController
  def new
    @business = Business.new
  end

  def create
    business = Business.new(business_params)
    business.save
    redirect_to root_path
  end

  private

  def business_params
    params.required(:business).permit(:phone_num, :capital, :type, :text).merge(business_user_id: params[:business_user_id])
  end
end
