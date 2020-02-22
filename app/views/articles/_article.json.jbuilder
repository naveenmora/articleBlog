json.extract! article, :id, :name, :image, :text, :created_at, :updated_at
json.url article_url(article, format: :json)
