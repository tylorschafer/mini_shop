# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Merchant.destroy_all
Item.destroy_all

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
  image: 'https://images.tirebuyer.com/visual-aids/products/tires/falken/wildpeakat3w/falken_wildpeakat3w_rbl_341933_sidewall_jpg_s3_resize_64x64_sidewall.jpg',
  active_status: true,
  inventory: 657,
)
ricks.items.create!(
  name: 'Rubber Max 1000',
  description: 'Should get you there safely',
  price: 1000,
  image: 'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiOicTwg4bkAhXnCTQIHfTUCqUQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.daytontrucktires.com%2Fen-us%2Findex&psig=AOvVaw1Cq_MM4SRupK4uGweZmf67&ust=1565984403681779',
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
  image: 'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiG1KblpobkAhXYrJ4KHYptC1UQjRx6BAgBEAQ&url=http%3A%2F%2Ffabricandsupply.com%2FBrown-Maroon-Copper-Western-Style-Upholstery-Fabric_p_300.html&psig=AOvVaw2_xEPxZO43o8fznzmNh_NW&ust=1566007525910342',
  active_status: true,
  inventory: 444,
)
fabrics.items.create!(
  name: 'Red Rug',
  description: 'You should just buy this...',
  price: 12456,
  image: 'https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwin1reDp4bkAhXIv54KHRVBBZ0QjRx6BAgBEAQ&url=%2Furl%3Fsa%3Di%26source%3Dimages%26cd%3D%26ved%3D%26url%3Dhttps%253A%252F%252Fwww.thelogfurniturestore.com%252Flittle-feather-cardinal-fabric%26psig%3DAOvVaw2_xEPxZO43o8fznzmNh_NW%26ust%3D1566007525910342&psig=AOvVaw2_xEPxZO43o8fznzmNh_NW&ust=1566007525910342',
  active_status: true,
  inventory: 2534,
)
