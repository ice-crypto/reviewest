json.extract! videowork, :id, :title, :screening_at, :screening_on, :summary, :directors, :screenplaies, :casts, :created_at, :updated_at
json.url videowork_url(videowork, format: :json)
