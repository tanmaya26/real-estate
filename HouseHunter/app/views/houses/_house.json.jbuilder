json.extract! house, :id, :company_id, :location, :square_footage, :year_built, :style, :price_list, :number_of_floors, :basement, :current_owner, :contact_info_realtor, :created_at, :updated_at
json.url house_url(house, format: :json)
