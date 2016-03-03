class ArticleResource < JSONAPI::Resource
  attribute :title
  relationship :author, to: :one
  relationship :comments, to: :many
end
