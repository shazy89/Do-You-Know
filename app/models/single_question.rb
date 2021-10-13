class SingleQuestion < ApplicationRecord
  has_one :question_option

  #  functions
  scope :sort_id, -> { self.order(id: :DESC) }
end
