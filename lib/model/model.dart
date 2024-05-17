import '../generated/assets.dart';

class GiftsModel {
  final String name;
  final String? description;
  final String imageUrl;
  final double? price;
  GiftsModel(
      {required this.name,
      required this.imageUrl,
      this.description,
      this.price});

  static List<GiftsModel> giftsList = [
    GiftsModel(
      name: 'Beautiful Flowers',
      description:
      'A bouquet of beautiful flowers containing a variety of rare and colorful flowers, carefully selected to suit all occasions. '
          'This bouquet brings a smile to the face of your loved one and expresses the highest feelings of love and appreciation. '
          'The flowers are elegantly and beautifully wrapped to give a sense of splendor and distinction. '
          'A perfect gift to decorate the house and add an atmosphere of happiness and joy.',
      price: 50.0,
      imageUrl:
      'https://images.pexels.com/photos/1488310/pexels-photo-1488310.jpeg',
    ),
    GiftsModel(
      name: 'Luxury Watch',
      description: 'An elegant and modern watch made from the finest materials with the latest technology. '
          'It features a unique design that blends classic and modern elements, making it suitable for all times and occasions. '
          'Comes in a luxurious box that adds a touch of luxury and elegance when presented as a gift. '
          'A watch that reflects the refined taste and distinctive personality of the wearer.',
      price: 250.0,
      imageUrl:
      'https://c4.wallpaperflare.com/wallpaper/729/338/570/watch-luxury-watches-ulysse-nardin-wallpaper-preview.jpg',
    ),
    GiftsModel(
      name: 'Ehsas Perfume',
      description:
      'A long-lasting refreshing scent, a blend of floral and woody notes that captivates the senses. '
          'This perfume is specially crafted to add a touch of allure and elegance to its user. '
          'Its luxurious packaging makes it a perfect gift for those seeking uniqueness and individuality. '
          'A perfume that suits all tastes and leaves an unforgettable impression.',
      price: 100.0,
      imageUrl:
      'https://cdn.salla.sa/Bnxgq/TokFI8etmftBqIpaMUf1mZr7Bjiz34Y0d6sbkD7x.jpg',
    ),
    GiftsModel(
      name: 'Chocolate Box',
      description:
      'A selection of the finest chocolates made from premium cocoa beans. '
          'The box contains a variety of flavors to suit all tastes, from dark chocolate to white chocolate. '
          'Comes in an elegant box that reflects luxury and quality, making it a perfect gift for all occasions. '
          'An unforgettable experience for all chocolate lovers.',
      price: 30.0,
      imageUrl:
      'https://w0.peakpx.com/wallpaper/781/62/HD-wallpaper-chocolates-brown-food-chocolate-box-bow-gift-sweet-dessert-truffles-white.jpg',
    ),
    GiftsModel(
      name: 'Flower Vase',
      description:
      'A bouquet of beautiful flowers containing a variety of rare and colorful flowers, carefully selected to suit all occasions. '
          'This bouquet brings a smile to the face of your loved one and expresses the highest feelings of love and appreciation. '
          'The flowers are elegantly and beautifully wrapped to give a sense of splendor and distinction. '
          'A perfect gift to decorate the house and add an atmosphere of happiness and joy.',
      price: 50.0,
      imageUrl:
      'https://c4.wallpaperflare.com/wallpaper/635/605/180/roses-flowers-pot-petals-wallpaper-preview.jpg',
    ),
    GiftsModel(
      name: 'Elegant Jewelry',
      description:
      'An 18-karat gold necklace and bracelet designed with precision to reflect elegance and sophistication. '
          'Each piece of jewelry features intricate and beautiful details, making it a unique and unforgettable gift. '
          'Comes in a luxurious box that adds a touch of beauty and luxury when presented as a gift. '
          'Jewelry that expresses love and care for the recipient.',
      price: 500.0,
      imageUrl:
      'https://c4.wallpaperflare.com/wallpaper/428/794/415/shine-ring-diamonds-decoration-ring-hd-wallpaper-preview.jpg',
    ),
    GiftsModel(
      name: 'Children\'s Toy',
      description:
      'An entertaining and educational toy for children that helps develop motor and cognitive skills. '
          'Made from safe materials and colored with bright colors to attract children\'s attention and stimulate them to play and learn. '
          'Its unique design makes it suitable for children of all ages, providing hours of fun and entertainment. '
          'A great gift to make children happy and stimulate their imagination.',
      price: 40.0,
      imageUrl: 'https://c0.wallpaperflare.com/preview/265/849/245/toys.jpg',
    ),
    GiftsModel(
      name: 'Custom Coffee Mug',
      description: 'A coffee mug with your name or a custom message to start your day with a smile. '
          'Made from high-quality ceramic and comes in an elegant design that can be customized with different shapes and colors. '
          'A perfect gift for coffee and tea lovers, adding a personal touch to every morning. '
          'Comes in a beautiful box making it an ideal gift for all occasions.',
      price: 15.0,
      imageUrl:
      'https://www.duomugs.com/cdn/shop/files/10362194369961499227_2048.jpg?v=1691225561&width=533',
    ),
  ];


  static List bannerImage = [
    'https://static.vecteezy.com/system/resources/previews/001/270/566/non_2x/black-friday-sale-banner-with-white-and-black-gift-boxes-vector.jpg',
    'https://static.vecteezy.com/system/resources/previews/005/099/583/non_2x/valentine-s-day-sale-poster-or-banner-with-cute-gift-box-on-pink-background-promotion-and-shopping-template-or-background-for-love-and-valentine-s-day-concept-vector.jpg',
    'https://media.theresanaiforthat.com/gift-box.png',
    'https://www.expandbuzz.com/wp-content/uploads/2023/09/Different-Types-of-Gift-Box-Packaging-Design-Ideas.png',
    'https://giftbox.ai/img/giftbox_facebook.png',
    'https://detourtocanada.ca/wp-content/uploads/2021/12/FEATURE-PART-2-1024x576.png'
  ];
  static List<GiftsModel> category = [
    GiftsModel(name: 'Perfumes', imageUrl: Assets.svgPerfume),
    GiftsModel(name: 'Makeup', imageUrl: Assets.svgMadcap),
    GiftsModel(name: 'Headphones', imageUrl: Assets.svgHeadphones),
    GiftsModel(name: 'Clothes', imageUrl: Assets.svgClothes),
    GiftsModel(name: 'Sunglasses', imageUrl: Assets.svgSunglasses),
  ];

}
