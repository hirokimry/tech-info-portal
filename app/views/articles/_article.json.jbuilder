json.extract! article, :id, :medium_id, :title, :url, :image_path, :publication_date, :access_count, :created_at, :updated_at
json.url article_url(article, format: :json)
