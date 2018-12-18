json.extract! employee, :id, :name, :email, :mobile, :hire_date, :created_at, :updated_at
json.url employee_url(employee, format: :json)
