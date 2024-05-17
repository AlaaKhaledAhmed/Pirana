import '../generated/assets.dart';

class Gifts {
  final String name;
  final String? description;
  final String imageUrl;
  final double? price;
  Gifts(
      {required this.name,
      required this.imageUrl,
      this.description,
      this.price});

  static List<Gifts> giftsList = [
    Gifts(
      name: 'زهور جميلة',
      description:
          'باقة من الزهور الجميلة تحتوي على مجموعة متنوعة من الأزهار النادرة والملونة، تم اختيارها بعناية فائقة لتناسب جميع المناسبات. '
          'هذه الباقة تزرع الابتسامة على وجه من تحب وتعبر عن أسمى مشاعر الحب والتقدير. '
          'الأزهار مغلفة بأناقة وجمال لتعطي إحساساً بالروعة والتميز. '
          'هدية مثالية لتزيين المنزل وإضفاء جو من السعادة والبهجة.',
      price: 50.0,
      imageUrl:
          'https://images.pexels.com/photos/1488310/pexels-photo-1488310.jpeg',
    ),
    Gifts(
      name: 'ساعة فاخرة',
      description: 'ساعة أنيقة وعصرية مصنوعة من أجود المواد وبأحدث التقنيات. '
          'تتميز بتصميمها الفريد الذي يدمج بين الكلاسيكية والحداثة، مما يجعلها مناسبة لجميع الأوقات والمناسبات. '
          'تأتي بعلبة فاخرة تضيف لمسة من الفخامة والأناقة عند تقديمها كهدية. '
          'ساعة تعكس الذوق الرفيع والشخصية المتميزة لمن يرتديها.',
      price: 250.0,
      imageUrl:
          'https://c4.wallpaperflare.com/wallpaper/729/338/570/watch-luxury-watches-ulysse-nardin-wallpaper-preview.jpg',
    ),
    Gifts(
      name: 'عطر احساس',
      description:
          'عطر برائحة منعشة تدوم طويلاً، مزيج من النوتات الزهرية والخشبية التي تأسر الحواس. '
          'صُنع هذا العطر خصيصاً ليضفي لمسة من الجاذبية والأناقة لمن يستخدمه. '
          'تغليفه الفاخر يجعل منه هدية مثالية لكل من يبحث عن التميز والتفرد. '
          'عطر يناسب جميع الأذواق ويترك انطباعاً لا يُنسى.',
      price: 100.0,
      imageUrl:
          'https://cdn.salla.sa/Bnxgq/TokFI8etmftBqIpaMUf1mZr7Bjiz34Y0d6sbkD7x.jpg',
    ),
    Gifts(
      name: 'علبة شوكولاتة',
      description:
          'مجموعة مختارة من أفضل أنواع الشوكولاتة المصنوعة من أفخر حبوب الكاكاو. '
          'تحتوي العلبة على تشكيلة متنوعة من النكهات لتناسب جميع الأذواق، من الشوكولاتة الداكنة إلى الشوكولاتة البيضاء. '
          'تأتي في علبة أنيقة تعكس الفخامة والجودة، مما يجعلها هدية مثالية لكل المناسبات. '
          'تجربة لا تُنسى لكل محبي الشوكولاتة.',
      price: 30.0,
      imageUrl:
          'https://w0.peakpx.com/wallpaper/781/62/HD-wallpaper-chocolates-brown-food-chocolate-box-bow-gift-sweet-dessert-truffles-white.jpg',
    ),
    Gifts(
      name: 'فازة زهور',
      description:
          'باقة من الزهور الجميلة تحتوي على مجموعة متنوعة من الأزهار النادرة والملونة، تم اختيارها بعناية فائقة لتناسب جميع المناسبات. '
          'هذه الباقة تزرع الابتسامة على وجه من تحب وتعبر عن أسمى مشاعر الحب والتقدير. '
          'الأزهار مغلفة بأناقة وجمال لتعطي إحساساً بالروعة والتميز. '
          'هدية مثالية لتزيين المنزل وإضفاء جو من السعادة والبهجة.',
      price: 50.0,
      imageUrl:
          'https://c4.wallpaperflare.com/wallpaper/635/605/180/roses-flowers-pot-petals-wallpaper-preview.jpg',
    ),
    Gifts(
      name: 'مجوهرات راقية',
      description:
          'قلادة وسوار من الذهب عيار 18 مصممان بإتقان ليعكسا الرقي والأناقة. '
          'كل قطعة مجوهرات تحمل تفاصيل دقيقة وجميلة تجعل منها هدية مميزة لا تُنسى. '
          'تأتي في علبة فاخرة تضيف لمسة من الجمال والفخامة عند تقديمها كهدية. '
          'مجوهرات تعبر عن الحب والاهتمام بالشخص المهدى إليه.',
      price: 500.0,
      imageUrl:
          'https://c4.wallpaperflare.com/wallpaper/428/794/415/shine-ring-diamonds-decoration-ring-hd-wallpaper-preview.jpg',
    ),
    Gifts(
      name: 'لعبة أطفال',
      description:
          'لعبة ترفيهية وتعليمية للأطفال تساعد على تنمية المهارات الحركية والفكرية. '
          'مصنوعة من مواد آمنة وملونة بألوان زاهية لجذب انتباه الأطفال وتحفيزهم على اللعب والتعلم. '
          'تصميمها الفريد يجعلها مناسبة للأطفال من مختلف الأعمار، وتقدم ساعات من المرح والتسلية. '
          'هدية رائعة لإسعاد الأطفال وتحفيز خيالهم.',
      price: 40.0,
      imageUrl: 'https://c0.wallpaperflare.com/preview/265/849/245/toys.jpg',
    ),
    Gifts(
      name: 'كوب قهوة مخصص',
      description: 'كوب قهوة يحمل اسمك أو رسالة مخصصة لتبدأ يومك بابتسامة. '
          'مصنوع من الخزف عالي الجودة ويأتي بتصميم أنيق يمكن تخصيصه بأشكال وألوان مختلفة. '
          'هدية مثالية لعشاق القهوة والشاي، تضيف لمسة شخصية لكل صباح. '
          'يأتي في علبة جميلة تجعله هدية مثالية لكل المناسبات.',
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
  static List<Gifts> category = [
    Gifts(name: 'عطور', imageUrl: Assets.svgPerfume),
    Gifts(name: 'مكياج', imageUrl: Assets.svgMadcap),
    Gifts(name: 'سماعات', imageUrl: Assets.svgHeadphones),
    Gifts(name: 'ملابس', imageUrl: Assets.svgClothes),
    Gifts(name: 'نظارات', imageUrl: Assets.svgSunglasses),

  ];
}
