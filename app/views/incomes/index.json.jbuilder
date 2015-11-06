json.array!(@incomes) do |income|
  json.extract! income, :id, :category_id, :amount
  json.url income_url(income, format: :json)
end
