json.extract! web_event_listing, :id, :title, :location_id, :created_at, :updated_at
json.url web_event_listing_url(web_event_listing, format: :json)
