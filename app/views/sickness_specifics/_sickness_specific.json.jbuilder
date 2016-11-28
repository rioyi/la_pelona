json.extract! sickness_specific, :id, :name, :cod, :sickness_general_id, :created_at, :updated_at
json.url sickness_specific_url(sickness_specific, format: :json)