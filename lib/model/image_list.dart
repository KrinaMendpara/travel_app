class ImageList {

  ImageList({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.location,
    this.isFavorite = false,
  });
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final String location;
  bool isFavorite;
}

final List<ImageList> items = [
  ImageList(
    id: 'I1',
    title: 'Northern Mountain',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.',
    price: 455,
    imageUrl:
        'https://thumbs.dreamstime.com/b/autumn-colors-himalayan-mountains-october-leh-ladakh-northern-part-india-165602779.jpg',
    location: 'between India and China',
  ),
  ImageList(
    id: 'I2',
    title: 'Greenough, Montana',
    description:
        'Backcountry living in the Montana Rockies never felt quite so luxe. Deep in the heart of the American West. The lodgings here come complete with full kitchens, laundry, and in most cases a fireplace or a wood-burning stove. The design may be rustic',
    price: 800,
    imageUrl:
        'https://images.indagare.com/wp-content/uploads/H-Montana-Paws-Up-13CliffsideCamp-DiningPavilion-2-PawsUpSummer2013.jpg',
    location: 'Montana',
  ),
  ImageList(
    id: 'I3',
    title: 'Mount Fuji',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.',
    price: 954,
    imageUrl:
        'https://cdn1.matadornetwork.com/blogs/1/2023/03/mt-fuji_188615729-560x420.jpg',
    location: 'Honshu, Japan',
  ),
  ImageList(
    id: 'I4',
    title: 'Mount Fuji',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.',
    price: 799,
    imageUrl:
        'https://image.kkday.com/v2/image/get/w_960%2Cc_fit%2Cq_55%2Ct_webp/s1.kkday.com/product_140458/20230309010112_gf71z/jpg',
    location: 'Honshu, Japan',
  ),

  // ImageList(id: 'I5', title: '', description: 'description', price: 200, imageUrl: 'https://cdn1.matadornetwork.com/blogs/1/2023/03/mt-fuji_188615729-560x420.jpg' , location: 'location'),
  // ImageList(id: 'I6', title: '', description: 'description', price: 200, imageUrl: 'https://cdn1.matadornetwork.com/blogs/1/2023/03/mt-fuji_188615729-560x420.jpg' , location: 'location'),
  // ImageList(id: 'I7', title: '', description: 'description', price: 200, imageUrl: 'https://cdn1.matadornetwork.com/blogs/1/2023/03/mt-fuji_188615729-560x420.jpg' , location: 'location'),
  // ImageList(id: 'I8', title: '', description: 'description', price: 200, imageUrl: 'https://cdn1.matadornetwork.com/blogs/1/2023/03/mt-fuji_188615729-560x420.jpg' , location: 'location'),
  // ImageList(id: 'I9', title: '', description: 'description', price: 200, imageUrl: 'https://cdn1.matadornetwork.com/blogs/1/2023/03/mt-fuji_188615729-560x420.jpg' , location: 'location'),
  // ImageList(id: '', title: '', description: 'description', price: 200, imageUrl: 'https://cdn1.matadornetwork.com/blogs/1/2023/03/mt-fuji_188615729-560x420.jpg' , location: 'location'),
  // ImageList(id: '', title: '', description: 'description', price: 200, imageUrl: 'https://cdn1.matadornetwork.com/blogs/1/2023/03/mt-fuji_188615729-560x420.jpg' , location: 'location'),
  // ImageList(id: '', title: '', description: 'description', price: 200, imageUrl: 'https://cdn1.matadornetwork.com/blogs/1/2023/03/mt-fuji_188615729-560x420.jpg' , location: 'location'),
  // ImageList(id: '', title: '', description: 'description', price: 200, imageUrl: 'https://cdn1.matadornetwork.com/blogs/1/2023/03/mt-fuji_188615729-560x420.jpg' , location: 'location'),
  // ImageList(id: '', title: '', description: 'description', price: 200, imageUrl: 'https://cdn1.matadornetwork.com/blogs/1/2023/03/mt-fuji_188615729-560x420.jpg' , location: 'location'),
  // ImageList(id: '', title: '', description: 'description', price: 200, imageUrl: 'https://cdn1.matadornetwork.com/blogs/1/2023/03/mt-fuji_188615729-560x420.jpg' , location: 'location'),
];
