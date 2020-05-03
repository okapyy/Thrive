json.array!(@parents) do |parent|
  json.extract! parent, :id, :name
  json.url items_url(parent, format: :json)
end