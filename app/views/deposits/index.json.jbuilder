json.array!(@deposits) do |deposit|
  json.extract! deposit, :id, :amount
  json.url deposit_url(deposit, format: :json)
end
