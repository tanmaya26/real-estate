json.extract! inquiry_reply, :id, :user_id, :house_id, :inquiry_id, :message, :company_id, :created_at, :updated_at
json.url inquiry_reply_url(inquiry_reply, format: :json)
