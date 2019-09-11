class BusinessUsersController < ApplicationController
  def index
    @business_users = BusinessUser.all
  end
end
