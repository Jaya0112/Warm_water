json.extract! user, :id, :name, :Gender, :Age, :Designation, :created_at, :updated_at
json.url user_url(user, format: :json)
