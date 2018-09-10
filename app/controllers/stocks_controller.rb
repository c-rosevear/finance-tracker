# Stocks Controller
class StocksController < ApplicationController
  def search
    if params[:stock].blank?
      flash[:danger] = 'Empty search string.'
    else
      @stock = Stock.new_from_lookup(params[:stock])
      flash[:danger] = 'Invalid entry' unless @stock
    end
    render partial: 'users/result'
  end
end
