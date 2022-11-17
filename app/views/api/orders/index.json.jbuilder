json.array! @orders do |order|
    json.id order.id
    json.first_name order.first_name
    json.last_name order.last_name
    json.phone_number order.phone_number
    json.address order.address
    json.card_number order.card_number
    json.total_price order.total_price
    json.order_details order.order_details
  end