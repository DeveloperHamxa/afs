json.array! @orders do |order|
    json.address order.address
    json.price order.price
    json.quantity order.quantity
    json.product order.products
  end