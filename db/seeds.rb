# Create a user
user = User.create!(email_address: "test@example.com", password_digest: "password")

# Create a balancing for the user
balancing = Balancing.create!(user_id: user.id, total_value: 1000.00)

# Create a balancing asset associated with the balancing
BalancingAsset.create!(
  balancing_id: balancing.id,
  asset_type: "Stock",
  current_value: 500.00,
  current_percentage: 50.00,
  desired_percentage: 60.00,
  updated_value: 600.00
)
