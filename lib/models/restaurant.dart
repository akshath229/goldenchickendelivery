

import 'food.dart';

class Restaurant
{
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Map<String, List<Food>> image;
  Restaurant(
      this.name,
      this.waitTime,
      this.distance,
      this.label,
      this.logoUrl,
      this.desc,
      this.score,
      this.menu,
      this.image,
      );

  static Restaurant generateRestaurant(){
    return Restaurant(
        'Restauratn',
        '20-30 min',
        '2.4 Km',
        'Restaurant',
        'assets/images/res_logo.png',
        "Orange sandwiches is delicius",
        4.7,
        {
          'Pizzaa': Food.generateRecommendFoods(),
          'Burgersss': Food.generatePopularFoods(),
          'Shavarma': [],
          'Biriyani' : [],
        },
        {
          'assets/pizza.png': Food.generateRecommendFoods(),
          'lib/images/pngwing.com.png': Food.generatePopularFoods(),
          'assets/burger.png': Food.generateRecommendFoods(),
          'lib/imagess/image-from-rawpixel-id-6121211-png.png' : Food.generateRecommendFoods(),
        }
    );
  }
}