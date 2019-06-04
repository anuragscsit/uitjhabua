json.extract! notice, :id, :notice_name, :notice_detail, :notice_type, :created_at, :updated_at
json.url notice_url(notice, format: :json)
