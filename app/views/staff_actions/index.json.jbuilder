json.array!(@staff_actions) do |staff_action|
  json.extract! staff_action, :id
  json.url staff_action_url(staff_action, format: :json)
end
