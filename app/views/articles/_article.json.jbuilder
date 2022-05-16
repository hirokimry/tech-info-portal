json.extract! article, :id, :article_id, :media_id, :article_title, :article_url, :article_image_path, :article_update_datetime, :article_access_num, :created_at, :updated_at
json.url article_url(article, format: :json)
