json.array!(@wish_items) do |wish_item|
  json.extract! wish_item, :id
  json.url wish_item_url(wish_item, format: :json)
end
