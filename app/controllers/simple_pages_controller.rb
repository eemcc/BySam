class SimplePagesController < ApplicationController
  def landing_page
    @featuring_product = Product.fourth
  end
end
