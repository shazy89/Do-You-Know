class SingleQuestionSerializer < ActiveModel::Serializer
  attributes :id,
             :question,
             :status,
             :correctAnswer,
             :link,
             :info,
             :questionType
  has_one :question_option
end
