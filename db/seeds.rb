2.times do
  Product.create!(
    name: Faker::Device.model_name,
    sku: rand(1000000..9999999999)
  )
end

Warehouse.create!([
  {
    street: 'First Rd',
    city: 'Baguio',
    province: 'Benguet'
  },
  {
    street: 'Tabora St.',
    city: 'Binondo',
    province: 'Manila'
  }
])

Stock.create!(
  product: Product.all.sample,
  warehouse: Warehouse.all.sample,
  count: 10
)
