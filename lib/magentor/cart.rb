module Magentor
  # http://www.magentocommerce.com/api/soap/checkout/cart/cart.html
  # 1001	Can not make operation because store is not exists
  # 1002	Can not make operation because quote is not exists
  # 1003	Can not create a quote.
  # 1004	Can not create a quote because quote with such identifier is already exists
  # 1005	You did not set all required agreements
  # 1006	The checkout type is not valid. Select single checkout type.
  # 1007	Checkout is not available for guest
  # 1008	Can not create an order.
  class Cart < Base
    class << self

      # cart.create
      # Allows you to create an empty shopping cart.
      #
      # Return: int
      #
      # Arguments:
      #
      # mixed (int | string) storeView - Store view Id or code (optional)
      def create(attributes)
        id = commit("create")
        record = new()
        record.id = id
        record
      end
    end
  end
end
