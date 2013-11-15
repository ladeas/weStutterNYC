json.array!(@recaps) do |recap|
  json.extract! recap, :title, :body, :user_id
  json.url recap_url(recap, format: :json)
end
