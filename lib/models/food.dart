
class Food{
  Food(
      this.id,
      this.imgUrl,
      this.desc,
      this.descarab,
      this.name,
      this.waitTime,
      this.score,
      this.cal,
      this.qty,
      this.price1,
      this.quantity,
      this.ingredients,
      this.about,
      this.aboutarab,
      {this.hightLight = false});

  int id;
  String imgUrl;
  String desc;
  String descarab;
  String name;
  String waitTime;
  num score;
  String cal;
  List<Map<String,String>> qty;
  num price1;
  num quantity;
  List<Map<String,String>> ingredients;
  String about;
  String aboutarab;
  bool hightLight;

  // factory Food.fromJson(Map<String, dynamic> json) => Food(
  //       id: id['id'],
  //       imgUrl: json['imgUrl'],
  //       desc: json['desc'],
  //       descarab: json['descarab'],
  //       name: json['name'],
  //       waitTime: json['waitTime'],
  //       score: json['score'],
  //       cal:json['cal'],
  //       qty:json['qty'],
  //       price1:json['price1'],
  //       quantity:json['quantity'],
  //       ingredients:json['ingredients'],
  //       about:json['about'],
  //       aboutarab:json['aboutarab'],
  //       hightLight:json['hightLight'],
  //   );
  Map<String, dynamic> toJson() => {
    "id": id,
    "imgUrl": imgUrl,
    "desc": desc,
    "descarab": descarab,
    "name" : name,
    "waitTime" : waitTime,
    "score" : score,
    "cal" : cal,
    "qty": qty,
    "price1": price1,
    "quantity": quantity,
    "ingredients": ingredients,
    "about": about,
    "aboutarab" : aboutarab,
    "hightLight": hightLight,
  };


  static List<Food> generateRecommendFoods(){
    return[
      Food(
          1,
          'assets/images/dish1.png',
          'No1. inSales',
          'وصف',
          'something',
          'Go min',
          4.8,
          '324 kcal',
          [
            {
              'Medium': '3',
            },
            {
              'Large': '4',
            },
          ],
          14,
          1,
          [
            {
              'Noodle': '3',
              'quantity': '0',
            },
            {
              'Shrimp': '2',
              'quantity': '0',
            },
            {
              'Egg': '5',
              'quantity': '0',
            },
            {
              'Scallion': '4',
              'quantity': '0',
            },
          ],
          'food, substance consisting essentially of protein, carbohydrate, fat, and other nutrients used in the body of an organism to sustain growth and vital processes and to furnish energy. The absorption and utilization of food by the body is fundamental to nutrition and is facilitated by digestion.',
          'طعام ، مادة تتكون أساسًا من البروتين والكربوهيدرات والدهون والعناصر الغذائية الأخرى المستخدمة في جسم الكائن الحي للحفاظ على النمو',
          hightLight: false
      ),
      Food(
          2,
          'assets/images/dish2.png',
          'No1. inSales',
          'وصف',
          'nothing',
          'Go min',
          4.8,
          '324 kcal',
          [
            {
              'Medium': '49',
            },
            {
              'Large': '38',
            },
          ],
          14,
          1,
          [
            {
              'Noodle': '3',
              'quantity': '0',
            },
            {
              'Shrimp': '5',
              'quantity': '0',
            },
            {
              'Egg': '4',
              'quantity': '0',
            },
            {
              'Scallion': '2',
              'quantity': '0',
            },
          ],
          'food, substance consisting essentially of protein, carbohydrate, fat, and other nutrients used in the body of an organism to sustain growth and vital processes and to furnish energy. The absorption and utilization of food by the body is fundamental to nutrition and is facilitated by digestion.',
          'طعام ، مادة تتكون أساسًا من البروتين والكربوهيدرات والدهون والعناصر الغذائية الأخرى المستخدمة في جسم الكائن الحي للحفاظ على النمو',
          hightLight: true
      ),
      Food(
          3,
          'assets/images/dish3.png',
          'No1. inSales',
          'وصف',
          'anything',
          'Go min',
          4.8,
          '324 kcal',
          [
            {
              'Medium': '3',
            },
            {
              'Large': '4',
            },
          ],
          14,
          1,
          [
            {
              'Noodle': '49',
              'quantity': '0',
            },
            {
              'Shrimp': '34',
              'quantity': '0',
            },
            {
              'Egg': '56',
              'quantity': '0',
            },
            {
              'Scallion': '49',
              'quantity': '0',
            },
          ],
          'food, substance consisting essentially of protein, carbohydrate, fat, and other nutrients used in the body of an organism to sustain growth and vital processes and to furnish energy. The absorption and utilization of food by the body is fundamental to nutrition and is facilitated by digestion.',
          'طعام ، مادة تتكون أساسًا من البروتين والكربوهيدرات والدهون والعناصر الغذائية الأخرى المستخدمة في جسم الكائن الحي للحفاظ على النمو',
          hightLight: false
      ),
      Food(
          4,
          'assets/images/dish4.png',
          'No1. inSales',
          'وصف',
          'dont know',
          'Go min',
          4.8,
          '324 kcal',
          [
            {
              'Medium': '49',
            },
            {
              'Large': '38',
            },
          ],
          14,
          1,
          [
            {
              'Noodle': '49',
              'quantity': '0',
            },
            {
              'Shrimp': '34',
              'quantity': '0',
            },
            {
              'Egg': '56',
              'quantity': '0',
            },
            {
              'Scallion': '49',
              'quantity': '0',
            },
          ],
          'food, substance consisting essentially of protein, carbohydrate, '
              'fat, and other nutrients used in the body of an organism to sustain growth and vital processes and to furnish energy. The absorption and utilization of food by the body is fundamental to nutrition and is facilitated by digestion.',
          'حول',
          hightLight: false
      ),
    ];
  }
  static List<Food> generatePopularFoods(){
    return[

      Food(
          5,
          'assets/images/dish4.png',
          'No1. inSales',
          'وصف',
          'know',
          'Go min',
          4.8,
          '324 kcal',
          [
            {
              'Medium': '49',
            },
            {
              'Large': '38',
            },
          ],
          14,
          1,
          [
            {
              'Noodle': '49',
              'quantity': '0',
            },
            {
              'Shrimp': '34',
              'quantity': '0',
            },
            {
              'Egg': '56',
              'quantity': '0',
            },
            {
              'Scallion': '49',
              'quantity': '0',
            },
          ],
          'simply put remen is a fjadfjsdjsdf',
          'حول',
          hightLight: true
      ),
    ];
  }
}





// class Food{
//   String imgUrl;
//   String desc;
//   String descarab;
//   String name;
//   String waitTime;
//   num score;
//   String cal;
//   List<Map<String,String>> qty;
//   num price1;
//   num quantity;
//   List<Map<String,String>> ingredients;
//   String about;
//   String aboutarab;
//   bool hightLight;
//
//
//   Food({this.imgUrl,
//       this.desc,
//       this.descarab,
//       this.name,
//       this.waitTime,
//       this.score,
//       this.cal,
//       this.qty,
//       this.price1,
//       this.quantity,
//       this.ingredients,
//       this.about,
//       this.aboutarab,
//       this.hightLight = false});
//
//   // factory Food.fromJson(Map<String, dynamic> json) {
//   //   return Food(
//   //       imgUrl: json['imgUrl'],
//   //       desc: json['desc'],
//   //       descarab: json['descarab'],
//   //       name: json['name'],
//   //       waitTime: json['waitTime'],
//   //       score: json['score'],
//   //       price1:json['price1'],
//   //       quantity:json['quantity'],
//   //       about:json['about'],
//   //       aboutarab:json['aboutarab'],
//   //       hightLight:json['hightLight'],
//   //       ingredients:json['ingredients'],
//   //       qty:json['qty'],
//   //   );
//   // }
//
//   static List<Food> generateRecommendFoods(){
//     return[
//       Food(
//         'assets/images/dish1.png',
//         'No1. inSales',
//         'وصف',
//         'something',
//         'Go min',
//         4.8,
//         '324 kcal',
//           [
//             {
//               'Medium': '3',
//             },
//             {
//               'Large': '4',
//             },
//           ],
//           14,
//           1,
//           [
//             {
//               'Noodle': '3',
//               'quantity': '0',
//             },
//             {
//               'Shrimp': '2',
//               'quantity': '0',
//             },
//             {
//               'Egg': '5',
//               'quantity': '0',
//             },
//             {
//               'Scallion': '4',
//               'quantity': '0',
//             },
//           ],
//         'food, substance consisting essentially of protein, carbohydrate, fat, and other nutrients used in the body of an organism to sustain growth and vital processes and to furnish energy. The absorption and utilization of food by the body is fundamental to nutrition and is facilitated by digestion.',
//           'طعام ، مادة تتكون أساسًا من البروتين والكربوهيدرات والدهون والعناصر الغذائية الأخرى المستخدمة في جسم الكائن الحي للحفاظ على النمو',
//         hightLight: false
//       ),
//       Food(
//           'assets/images/dish2.png',
//           'No1. inSales',
//           'وصف',
//           'nothing',
//           'Go min',
//           4.8,
//           '324 kcal',
//           [
//             {
//               'Medium': '49',
//             },
//             {
//               'Large': '38',
//             },
//           ],
//           14,
//           1,
//           [
//             {
//               'Noodle': '3',
//               'quantity': '0',
//             },
//             {
//               'Shrimp': '5',
//               'quantity': '0',
//             },
//             {
//               'Egg': '4',
//               'quantity': '0',
//             },
//             {
//               'Scallion': '2',
//               'quantity': '0',
//             },
//           ],
//           'food, substance consisting essentially of protein, carbohydrate, fat, and other nutrients used in the body of an organism to sustain growth and vital processes and to furnish energy. The absorption and utilization of food by the body is fundamental to nutrition and is facilitated by digestion.',
//           'طعام ، مادة تتكون أساسًا من البروتين والكربوهيدرات والدهون والعناصر الغذائية الأخرى المستخدمة في جسم الكائن الحي للحفاظ على النمو',
//           hightLight: true
//       ),
//       Food(
//           'assets/images/dish3.png',
//           'No1. inSales',
//           'وصف',
//           'anything',
//           'Go min',
//           4.8,
//           '324 kcal',
//           [
//             {
//               'Medium': '3',
//             },
//             {
//               'Large': '4',
//             },
//           ],
//           14,
//           1,
//           [
//             {
//               'Noodle': '49',
//               'quantity': '0',
//             },
//             {
//               'Shrimp': '34',
//               'quantity': '0',
//             },
//             {
//               'Egg': '56',
//               'quantity': '0',
//             },
//             {
//               'Scallion': '49',
//               'quantity': '0',
//             },
//           ],
//           'food, substance consisting essentially of protein, carbohydrate, fat, and other nutrients used in the body of an organism to sustain growth and vital processes and to furnish energy. The absorption and utilization of food by the body is fundamental to nutrition and is facilitated by digestion.',
//           'طعام ، مادة تتكون أساسًا من البروتين والكربوهيدرات والدهون والعناصر الغذائية الأخرى المستخدمة في جسم الكائن الحي للحفاظ على النمو',
//           hightLight: false
//       ),
//       Food(
//           'assets/images/dish4.png',
//           'No1. inSales',
//           'وصف',
//           'dont know',
//           'Go min',
//           4.8,
//           '324 kcal',
//           [
//             {
//               'Medium': '49',
//             },
//             {
//               'Large': '38',
//             },
//           ],
//           14,
//           1,
//           [
//             {
//               'Noodle': '49',
//               'quantity': '0',
//             },
//             {
//               'Shrimp': '34',
//               'quantity': '0',
//             },
//             {
//               'Egg': '56',
//               'quantity': '0',
//             },
//             {
//               'Scallion': '49',
//               'quantity': '0',
//             },
//           ],
//           'food, substance consisting essentially of protein, carbohydrate, fat, and other nutrients used in the body of an organism to sustain growth and vital processes and to furnish energy. The absorption and utilization of food by the body is fundamental to nutrition and is facilitated by digestion.',
//           'حول',
//           hightLight: false
//       ),
//     ];
//   }
//   static List<Food> generatePopularFoods(){
//     return[
//
//         Food(
//             'assets/images/dish4.png',
//             'No1. inSales',
//             'وصف',
//             'know',
//             'Go min',
//             4.8,
//             '324 kcal',
//             [
//               {
//                 'Medium': '49',
//               },
//               {
//                 'Large': '38',
//               },
//             ],
//             14,
//             1,
//             [
//               {
//                 'Noodle': '49',
//                 'quantity': '0',
//               },
//               {
//                 'Shrimp': '34',
//                 'quantity': '0',
//               },
//               {
//                 'Egg': '56',
//                 'quantity': '0',
//               },
//               {
//                 'Scallion': '49',
//                 'quantity': '0',
//               },
//             ],
//             'simply put remen is a fjadfjsdjsdf',
//             'حول',
//             hightLight: true
//         ),
//     ];
//   }
// }