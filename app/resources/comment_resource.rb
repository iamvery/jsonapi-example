class CommentResource < JSONAPI::Resource
  attribute :body
  relationship :article, to: :one
end
