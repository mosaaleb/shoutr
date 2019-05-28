class TextShout < ApplicationRecord
  # Validations
  validates :body, presence: true, length: { in: 1..144 }

end
