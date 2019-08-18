# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Item.destroy_all
Merchant.destroy_all

daves = Merchant.create(
  name: "Dave's Drum Shop",
  address: "4586 Humbolt Ln",
  city: "Dallas",
  state: "Texas",
  zip: "22065"
)
daves.items.create!(
  name: 'Alesis Strike Pro Kit',
  description: 'Traditional Drum Sizes and Real Drum FeelThe stunning new Alesis Strike Pro kit shatters all your pre-conceived notions about electronic drums. It combines the feel and familiarity of acoustic drums combined with the versatility and capability of the best electronic drums.',
  price: 2299,
  image:'https://images-na.ssl-images-amazon.com/images/I/61yDRAtcJ5L._SX425_.jpg',
  active_status: true,
  inventory: 55,
)
daves.items.create!(
  name: 'Ludwig Backbeat',
  description: "Ludwig's BackBeat Complete 5-Piece drum set gives new drummers the chance to begin their drumming journey with Ludwig—a name in drums that's synonymous with quality craftsmanship and beautiful tone—at an unbelievable price.",
  price: 429,
  image: 'https://www.ludwig-drums.com/application/files/5414/6668/9969/breakbeats-_0000_Layer_3.jpg',
  active_status: true,
  inventory: 287,
)
daves.items.create!(
  name: 'Zildjian ZPT Pro Cymbal set',
  description: 'The Zildjian ZBT Pro Cymbal Set, prematched to ensure complimentary sound and tone, is a set of cymbals containing a 14" hi-hat set, 16" crash, and 20" crash-ride.',
  price: 319,
  image: 'https://media.sweetwater.com/api/i/q-82__ha-e3467218e4e487df__hmac-53a1b9a54219a9b2e99d804c38e302946d5d9d6a/images/items/750/ZBTP390-A-large.jpg',
  active_status: true,
  inventory: 983,
)
ricks = Merchant.create(
  name: "Rick's Recording Tools",
  address: "6564 E Lovett Lane",
  city: "Nashville",
  state: "Tennesse",
  zip: "45623"
)
ricks.items.create!(
  name: 'UA Apollo Twin MKII',
  description: 'The next-generation Apollo Twin Series is a ground-up redesign of the original—delivering enhanced audio conversion with the tone, feel and flow of analog recording.',
  price: 799,
  image: 'https://media.sweetwater.com/api/i/q-82__ha-36c7de8553674cb6__hmac-fd17725ed2c966ac4505a93c20f4401ed73c0b5d/images/items/750/ApolloTDmkII-large.jpg',
  active_status: true,
  inventory: 286,
)
ricks.items.create!(
  name: 'Apple Complete Recording Studio with Mac Mini v8',
  description: 'The Complete Desktop Recording Studio with Mac Mini provides all the hardware and software you need to write, compose and record your music from start to finish.',
  price: 1399,
  image: 'https://media.guitarcenter.com/is/image/MMGS7/Complete-Recording-Studio-with-Mac-Mini-v6-MGEM2LL-A/J42703000000000-00-290x290.jpg',
  active_status: true,
  inventory: 187,
)
ricks.items.create!(
  name: 'Rode Microphones RODECaster Pro Integrated Podcast Production Console',
  description: 'A lot of people are a little confused about podcasting. What is it? Who listens? What equipment should you get? The beginning of the answer is at the heart of your podcasting system: The RØDECaster™ Pro.',
  price: 599,
  image: 'https://media.sweetwater.com/api/i/q-82__ha-3a6bceb35791642a__hmac-73334bec017e2f64a09d12204a4ae6260dbe9361/images/items/750/RodecasterPro-large.jpg',
  active_status: true,
  inventory: 283,
)
