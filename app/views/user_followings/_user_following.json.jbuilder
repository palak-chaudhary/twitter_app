json.extract! user_following, :id, :user_id, :following_user_id, :created_at, :updated_at
json.url user_following_url(user_following, format: :json)
