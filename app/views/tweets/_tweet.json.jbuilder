json.extract! tweet, :id, :message, :photo_link, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
