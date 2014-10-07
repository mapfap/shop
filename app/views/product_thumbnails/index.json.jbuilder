json.array!(@product_thumbnails) do |product_thumbnail|
  json.extract! product_thumbnail, :id
  json.url product_thumbnail_url(product_thumbnail, format: :json)
end
