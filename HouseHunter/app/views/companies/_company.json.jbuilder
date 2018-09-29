json.extract! company, :id, :name, :website, :address, :founded, :synopsis, :revenue, :size, :created_at, :updated_at
json.url company_url(company, format: :json)
