class AuthorResource < JSONAPI::Resource
  attribute :name
  relationship :article, to: :many
end
