json.array!(@product_description_images) do |product_description_image|
  json.extract! product_description_image, :id
  json.url product_description_image_url(product_description_image, format: :json)
end
