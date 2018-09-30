json.extract! inquiry, :id, :user_id, :company_id, :house_id, :subject, :message, :created_at, :updated_at
json.url inquiry_url(inquiry, format: :json)
