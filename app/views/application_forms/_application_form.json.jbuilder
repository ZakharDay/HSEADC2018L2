json.extract! application_form, :id, :name, :about, :email, :phone, :project_title, :project_description, :age, :post_id, :created_at, :updated_at
json.url application_form_url(application_form, format: :json)
