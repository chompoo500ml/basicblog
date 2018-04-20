class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :body, :created_at, :updated_at
end
