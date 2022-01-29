json.extract! lead, :id, :name, :last_name, :email, :phone_number, :status, :entered_by, :entry_date, :conversation, :user_id, :created_at, :updated_at
json.url lead_url(lead, format: :json)
