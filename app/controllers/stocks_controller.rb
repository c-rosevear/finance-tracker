class StocksController < ApplicationController

    def self.new_from_lookup(ticker_symbol)  
        looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
        new(name: looked_up_name, ticker:looked_up_stock.ticker_symbol, last_price: looked_ip_stock.l)
    end
end