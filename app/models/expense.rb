class Expense < ApplicationRecord
  belongs_to :amount
  belongs_to :category
  belongs_to :account
end
