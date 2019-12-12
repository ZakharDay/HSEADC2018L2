json.extract! attachment, :id, :type, :url, :created_at, :updated_at
json.url attachment_url(attachment, format: :json)
