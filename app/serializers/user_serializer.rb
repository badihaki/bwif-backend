class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :created_at, :profile_name
end
