json.extract! user_company_mapping, :id, :users_id, :companies_id, :created_at, :updated_at
json.url user_company_mapping_url(user_company_mapping, format: :json)
