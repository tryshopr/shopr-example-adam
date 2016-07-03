class PagesController < ApplicationController

  def home
    @products = Shopr::Product.active.featured.includes(:product_categories, :variants).root
  end

end

