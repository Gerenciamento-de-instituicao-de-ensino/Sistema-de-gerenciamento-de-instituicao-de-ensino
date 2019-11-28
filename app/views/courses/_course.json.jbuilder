json.extract! course, :id, :title, :codigo, :lecturer_id, :created_at, :updated_at
json.url course_url(course, format: :json)
