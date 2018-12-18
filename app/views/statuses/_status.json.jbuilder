json.extract! status, :id, :present, :absent, :sick_leave, :day_off, :created_at, :updated_at
json.url status_url(status, format: :json)
