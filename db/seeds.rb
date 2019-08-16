# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Item.destroy_all
Merchant.destroy_all

ricks = Merchant.create(
  name: "Rick's Risky Tire Euporium",
  address: "123 Fake Lane",
  city: "Fakeville",
  state: "Colorado",
  zip: "80203"
)
ricks.items.create!(
  name: 'Super Tread 9000',
  description: 'A real nice tire',
  price: 9999,
  image:'https://images.tirebuyer.com/visual-aids/products/tires/falken/wildpeakat3w/falken_wildpeakat3w_rbl_341933_sidewall_jpg_s3_resize_64x64_sidewall.jpg',
  active_status: true,
  inventory: 657,
)
ricks.items.create!(
  name: 'Rubber Max 1000',
  description: 'Should get you there safely',
  price: 1000,
  image: 'https://previews.123rf.com/images/chatree12/chatree121406/chatree12140600173/29253228-tread-patterns-on-old-worn-car-tires.jpg',
  active_status: true,
  inventory: 10934,
)
fabrics = Merchant.create(
  name: "Wild Wild Western Fabrics",
  address: "456 Not Real Ct",
  city: "False Town",
  state: "Michigan",
  zip: "20356"
)
fabrics.items.create!(
  name: 'Wolly Rug',
  description: 'This should look nice!',
  price: 98243,
  image: 'https://i.ebayimg.com/thumbs/images/g/uI4AAOSwv7BdKJfP/s-l225.jpg',
  active_status: true,
  inventory: 444,
)
fabrics.items.create!(
  name: 'Red Rug',
  description: 'You should just buy this...',
  price: 12456,
  image: 'https://cdn.shopify.com/s/files/1/1918/9937/products/red-bandanna-fabric-moda-fabrics_900x.jpg?v=1529237997',
  active_status: true,
  inventory: 2534,
)
