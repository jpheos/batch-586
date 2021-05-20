Garden.destroy_all
Tag.destroy_all

%w(Fruit\ tree Cactus Greasy\ plant Flower Ferns Conifers).each do |tag_name|
  Tag.create!(name: tag_name)
end

garden1 = Garden.create!(name: 'jardin français', banner_url: 'https://images.unsplash.com/photo-1550948390-6eb7fa773072?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1506&q=80')
garden2 = Garden.create!(name: 'jardin japonais', banner_url: 'https://images.unsplash.com/photo-1578302758063-0ef3e048ca89?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1510&q=80')

rosier = Plant.create!(
  name: 'rosier',
  image_url: 'https://images.unsplash.com/photo-1548460464-633509d5073d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=80',
  garden: garden1
)

rosier2 = Plant.create!(
  name: 'rosier2',
  image_url: 'https://images.unsplash.com/photo-1559563362-c667ba5f5480?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cm9zZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  garden: garden1
)


Plant.create!(
  name: 'rosier3',
  image_url: 'https://images.unsplash.com/photo-1518621736915-f3b1c41bfd00?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cm9zZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  garden: garden1
)

Plant.create!(
  name: 'rosier4',
  image_url: 'https://images.unsplash.com/photo-1547617774-2eb320ad93f5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cm9zZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  garden: garden2
)

PlantTag.create!(
  plant: rosier,
  tag: Tag.find_by(name: 'Flower')
)

PlantTag.create!(
  plant: rosier,
  tag: Tag.find_by(name: 'Conifers')
)

PlantTag.create!(
  plant: rosier2,
  tag: Tag.find_by(name: 'Flower')
)

ap Plant.all
