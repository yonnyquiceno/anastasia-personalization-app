Category.create(category_name: 'bags', image: 'bag1')
Category.create(category_name: 'scarfs', image: 'scarf1')
Category.create(category_name: 'carpets', image: 'carpet1')

Article.create(article_name: 'Caroline Stardust', image1: 'bag1', image2: 'bag1-2',
               image3: 'bag1_3', dimension: '25x40', available: true, category_id: 1, parts_count: 5, description: 'Suspendisse non elementum nunc, Suspendisse malesuada varius sapien, at faucibus arcu consectetur vel. Fusce, a urna mattis, commodo velit a, posuere elit.,  Pellentesque porta tellus pharetra ornare,  dignissim. Aenean gravida ligula felis.')
Article.create(article_name: 'Malalas Mignora', image1: 'bag2', image2: 'bag2-2',
               image3: 'bag2_3', dimension: '25x25', available: true, category_id: 1, parts_count: 5, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis consectetur, mauris sit amet interdum consectetur, ante est convallis libero, sit amet tincidunt ante quam at massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin vitae nisi quis.')
Article.create(article_name: 'Scher Daedalus', image1: 'bag3', image2: 'bag3-2',
               image3: 'bag3_3', dimension: '25x40', available: true, category_id: 1, parts_count: 5, description: 'Aenean tristique venenatis volutpat. Maecenas ultricies nulla sed metus commodo, quis tincidunt ex suscipit. Ut sed nibh ante. Sed sit amet arcu leo. Curabitur sed mi laoreet, rutrum nisi eget, lacinia sem. Aliquam laoreet pulvinar erat. Aliquam condimentum, nulla sit')
Article.create(article_name: 'Scher Daedalus', image1: 'bag4', image2: 'bag4-2',
               image3: 'bag4_3', dimension: '25x40', available: true, category_id: 1, parts_count: 5, description: 'Aliquam aliquet egestas justo ut molestie. Maecenas sollicitudin bibendum mauris, quis pellentesque tellus dignissim nec. Integer vestibulum sodales nisl, congue convallis elit semper et. Proin dictum ante eget erat sodales aliquam. Nunc vitae tincidunt ligula, vitae egestas est. Suspendisse varius.')

Article.create(article_name: 'Clara Zetin', image1: 'carpet1', image2: 'carpet1-2',
               image3: 'carpet1_3', dimension: '60x60', available: true, category_id: 3, parts_count: 5,  description: 'Suspendisse non elementum nunc, Suspendisse malesuada varius sapien, at faucibus arcu consectetur vel. Fusce, a urna mattis, commodo velit a, posuere elit.,  Pellentesque porta tellus pharetra ornare,  dignissim. Aenean gravida ligula felis.')
Article.create(article_name: 'Mignora Carpet', image1: 'carpet2', image2: 'carpet2-2',
               image3: 'carpet2_3', dimension: '60x60', available: true, category_id: 3, parts_count: 5,  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis consectetur, mauris sit amet interdum consectetur, ante est convallis libero, sit amet tincidunt ante quam at massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin vitae nisi quis.')
Article.create(article_name: 'Scher Carpet', image1: 'carpet3', image2: 'carpet3-2',
               image3: 'carpet3_3', dimension: '60x60', available: true, category_id: 3, parts_count: 5,  description: 'Aenean tristique venenatis volutpat. Maecenas ultricies nulla sed metus commodo, quis tincidunt ex suscipit. Ut sed nibh ante. Sed sit amet arcu leo. Curabitur sed mi laoreet, rutrum nisi eget, lacinia sem. Aliquam laoreet pulvinar erat. Aliquam condimentum, nulla sit')

Article.create(article_name: 'Clara Scarf', image1: 'scarf1', image2: 'scarf1-2',
               image3: 'scarf1_3', dimension: '60x60', available: true, category_id: 2, parts_count: 1, description: 'Suspendisse non elementum nunc, Suspendisse malesuada varius sapien, at faucibus arcu consectetur vel. Fusce, a urna mattis, commodo velit a, posuere elit.,  Pellentesque porta tellus pharetra ornare,  dignissim. Aenean gravida ligula felis.')
Article.create(article_name: 'Mignora Scarf', image1: 'scarf2', image2: 'scarf2-2',
               image3: 'scarf2_3', dimension: '60x60', available: true, category_id: 2, parts_count: 1, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis consectetur, mauris sit amet interdum consectetur, ante est convallis libero, sit amet tincidunt ante quam at massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin vitae nisi quis.')
Article.create(article_name: 'Scher Scarf', image1: 'scarf3', image2: 'scarf3-2',
               image3: 'scarf3_3', dimension: '60x60', available: true, category_id: 2, parts_count: 1, description: 'Aenean tristique venenatis volutpat. Maecenas ultricies nulla sed metus commodo, quis tincidunt ex suscipit. Ut sed nibh ante. Sed sit amet arcu leo. Curabitur sed mi laoreet, rutrum nisi eget, lacinia sem. Aliquam laoreet pulvinar erat. Aliquam condimentum, nulla sit')

Material.create(material_name: 'franela',	total_weight: 80,	color:	'rgba(255, 51, 255, 0.5)')
Material.create(material_name: 'franela',	total_weight: 80,	color:	'rgba(255, 0, 102, 0.5)')
Material.create(material_name: 'franela',	total_weight: 70,	color:	'rgba(153, 0, 51, 0.5)')
Material.create(material_name: 'franela',	total_weight: 60,	color:	'rgba(255, 0, 255, 0.5)')
Material.create(material_name: 'franela',	total_weight: 50,	color:	'rgba(255, 80, 80, 0.5)')
Material.create(material_name: 'franela',	total_weight: 40,	color:	'rgba(204, 0, 0, 0.5)')
Material.create(material_name: 'franela',	total_weight: 30,	color:	'rgba(51, 204, 51, 0.5)')
Material.create(material_name: 'franela',	total_weight: 80,	color:	'rgba(102, 255, 51, 0.5)')
Material.create(material_name: 'franela',	total_weight: 70,	color:	'rgba(102, 153, 0, 0.5)')
Material.create(material_name: 'franela',	total_weight: 60,	color:	'rgba(153, 255, 51, 0.5)')
Material.create(material_name: 'franela',	total_weight: 50,	color:	'rgba(51, 102, 0, 0.5)')
Material.create(material_name: 'franela',	total_weight: 40,	color:	'rgba(204, 255, 51, 0.5)')
Material.create(material_name: 'franela',	total_weight: 30,	color:	'rgba(51, 153, 255, 0.5)')
Material.create(material_name: 'franela',	total_weight: 80,	color:	'rgba(51, 204, 255, 0.5)')
Material.create(material_name: 'franela',	total_weight: 70,	color:	'rgba(0, 102, 255, 0.5)')
Material.create(material_name: 'franela',	total_weight: 60,	color:	'rgba(51, 51, 255, 0.5)')
Material.create(material_name: 'franela',	total_weight: 50,	color:	'rgba(0, 0, 153, 0.5)')
Material.create(material_name: 'franela',	total_weight: 40,	color:	'rgba(102, 255, 255, 0.5)')
Material.create(material_name: 'franela',	total_weight: 30,	color:	'rgba(153, 102, 51, 0.5)')
Material.create(material_name: 'franela',	total_weight: 40,	color:	'rgba(102, 51, 0, 0.5)')
Material.create(material_name: 'franela',	total_weight: 30,	color:	'rgba(153, 153, 102, 0.5)')
Material.create(material_name: 'franela',	total_weight: 80,	color:	'rgba(255, 153, 0, 0.5)')
Material.create(material_name: 'franela',	total_weight: 70,	color:	'rgba(204, 102, 0, 0.5)')
Material.create(material_name: 'franela',	total_weight: 60,	color:	'rgba(204, 51, 0, 0.5)')

Part.create(part_name: 'ext_1', weight: 0.2)
Part.create(part_name: 'ext_2', weight: 0.2)
Part.create(part_name: 'ext_3', weight: 0.2)
Part.create(part_name: 'ext_4', weight: 0.2)
Part.create(part_name: 'ext_5', weight: 0.2)
