Before do
  # page.current_window.resize_to(0, 0)
  page.driver.browser.manage.window.maximize

  @rest_list_page = RestaurantListPage.new
  @rest_page = RestaurantPage.new
  @order_page = OrderPage.new
  @cart_page = CartView.new
end

Before("@bread_bakery") do
  visit "/restaurants/bread-bakery/menu"
end

Before("@green_food") do
  visit "/restaurants/green-food/menu"
end
