class DashboardController < ApplicationController
  def index
  	# @categories = Product.group(:category_id).count
  	@categories = Category.includes(:products).group(:category_id,
"categories.name").pluck("categories.name, count(products.category_id)")
  @products_by_day = Product.group_by_day(:created_at).count
  end
end
