json.extract! doctor, :id, :name, :surname, :id_number, :cellphone_number, :specialty_id, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
