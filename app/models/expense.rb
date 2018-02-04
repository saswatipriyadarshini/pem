class Expense < ApplicationRecord
  belongs_to :amount
  belongs_to :category
  belongs_to :account

  validates :category_id, presence: true
  validates :account_id, presence: true

  accepts_nested_attributes_for :amount

  def amount_value
    self.amount.value
  end

  def category_name
    self.category&.name
  end

  def account_name
    self.account&.name
  end
end
