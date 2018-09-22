json.extract! user, :id, :user_name, :password, :email_address, :first_name, :last_name, :middle_name, :preferred_contact_method, :created_at, :updated_at
json.url user_url(user, format: :json)
