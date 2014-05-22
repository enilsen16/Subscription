json.array!(@subscriptons) do |subscripton|
  json.extract! subscripton, :id, :book_id, :subscriber_id, :length
  json.url subscripton_url(subscripton, format: :json)
end
