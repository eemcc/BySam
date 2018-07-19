class SimplePagesController < ApplicationController
  def landing_page
    unless (product.name==nil)
      puts "No featured product"
    else
      @featuring_product = Product.first
    end
  end
end
