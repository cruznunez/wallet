json.array!(@withdrawals) do |withdrawal|
  json.extract! withdrawal, :id, :amount, :recipient
  json.url withdrawal_url(withdrawal, format: :json)
end
