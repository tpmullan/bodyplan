json.array!(@reviews) do |review|
  json.extract! review, :id, :user_id, :program_id, :body, :rating, :title
  json.url review_url(review, format: :json)
end
