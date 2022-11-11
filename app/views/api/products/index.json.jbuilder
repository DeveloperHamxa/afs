json.array! @products do |product|
    json.title product.title
    json.descripiton product.descripiton
    json.price product.price
    json.quantity product.quantity
    json.image_url product.image_url
    json.category product.categories
  end