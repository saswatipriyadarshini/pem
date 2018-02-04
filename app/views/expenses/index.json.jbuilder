json.array! @expenses do |expense|
  json.extract! expense, :id, :amount_value, :date, :category_name, :account_name
end
