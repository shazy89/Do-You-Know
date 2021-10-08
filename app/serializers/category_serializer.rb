class CategorySerializer < ActiveModel::Serializer
  attributes :id, :question, :status, :correctAnswer, :link, :info, :questionType
end
