class SimplePagesController < ApplicationController
  def landing_page
    @featured_product = Product.first
    @product = Product.limit(3)
  end
end
