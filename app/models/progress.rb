class Progress < ApplicationRecord
  belongs_to :user
  has_many :progress_types
end
