# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Merchant.destroy_all

Merchant.create(
  name: "Rick's Risky Tire Euporium",
  address: "123 Fake Lane",
  city: "Fakeville",
  state: "Colorado",
  zip: "80203"
)
Merchant.create(
  name: "Wild Wild Western Fabrics",
  address: "456 Not Real Ct",
  city: "False Town",
  state: "Michigan",
  zip: "20356"
)
