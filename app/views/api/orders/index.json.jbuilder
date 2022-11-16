json.array! @orders do |order|
    json.first_name order.first_name
    json.last_name order.last_name
    json.phone_number order.phone_number
    json.address order.address
    json.price order.price
    json.quantity order.quantity
    json.product order.products
  end