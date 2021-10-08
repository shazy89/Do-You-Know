class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :progress

  def progress
    object.progress.progress_types
  end
end
