json.extract! application_setting, :id, :name, :about, :email, :phone, :project_title, :project_description, :age, :created_at, :updated_at
json.url application_setting_url(application_setting, format: :json)
