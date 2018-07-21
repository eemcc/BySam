class SimplePagesController < ApplicationController
  layout "static"
  def landing_page
    @product = Product.limit(3)
  end
end
