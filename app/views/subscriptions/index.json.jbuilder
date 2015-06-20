json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :id, :user_id, :program_id
  json.url subscription_url(subscription, format: :json)
end
