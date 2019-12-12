json.extract! ticket, :id, :body, :reporter_id, :doer_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
