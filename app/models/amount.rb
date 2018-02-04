class Amount < ApplicationRecord
  validates :value, {presence: true}
end
