class StocksController < ApplicationController 
  def index
    @stocks = Stock.all
  end
  def show;  end

  def new
    @stock = Stock.new
  end
end
