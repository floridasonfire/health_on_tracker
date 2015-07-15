class FoodsController < ApplicationController
  def index
    @foods = Food.order(:name).paginate(:page => params[:page], :per_page => 10)
  end
end
