json.array!(@events) do |event|
  json.extract! event, :start_datetime, :end_datetime, :venue, :address, :cost, :name, :details, :type
  json.url event_url(event, format: :json)
end
