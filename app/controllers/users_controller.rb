class UsersController < ApplicationController
  before_action :authenticate_user!

  def search

  end

  def myproducts
    @user = current_user
    @products = @user.products

  end

  private
  def set_params
    @products = Product.find(params[:id])
  end



end
