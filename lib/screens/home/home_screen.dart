// import 'package:flutter/material.dart';
// import 'package:geocoder/geocoder.dart';
// import 'package:geolocator/geolocator.dart';
//
// class HomeScreen extends StatefulWidget {
//   HomeScreen({Key key}) : super(key: key);
//
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//
//
//   getdata () async{
//     Position position = await _determinePosition();
//     final coordinates = new Coordinates(
//         position.latitude, position.longitude);
//     var addresses = await Geocoder.local.findAddressesFromCoordinates(
//         coordinates);
//
//     var first = addresses.first;
//     print(' ${first.locality}, ${first.adminArea},${first.subLocality}, ${first.subAdminArea},${first.addressLine}, ${first.featureName},${first.thoroughfare}, ${first.subThoroughfare}');
//     return first.locality;
//   }
//
//
//
//
//   Future<Position> _determinePosition() async {
//     bool serviceEnabled;
//     LocationPermission permission;
//
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       return Future.error("Location services are disabled.");
//     }
//
//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.deniedForever) {
//       return Future.error(
//           "Location permissions are permantly denied. we cannot request permissions.");
//     }
//
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission != LocationPermission.whileInUse &&
//           permission != LocationPermission.always) {
//
//         return Future.error(
//             "Location permissions are denied (actual value: $permission).");
//       }
//     }
//     return await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);
//   }
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Get Current Location"),
//       ),
//       body: Center(
//         child: FutureBuilder(
//           future: _determinePosition(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData)    {
//               final Position position = snapshot.data as Position;
//               var nothing = getdata();
//               return Container(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text("Lat : ${position.latitude}"),
//                     Text("Lng : ${position.longitude}"),
//                     Text("the data is ${nothing.toString()}")
//                   ],
//                 ),
//               );
//             } else if (snapshot.hasError) {
//               Scaffold.of(context).showSnackBar(SnackBar(
//                   content: Text(
//                 snapshot.error.toString(),
//               )));
//               return Container(
//                 child: Text(snapshot.error.toString()),
//               );
//             }
//             return CircularProgressIndicator();
//           },
//         ),
//       ),
//     );
//   }
// }
//
//
//


///..................................................................................

import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import '../../pages/setting.dart';
import 'home.dart';
import 'package:geolocator/geolocator.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  static String address = "Get location";
  static var _current;

 @override
   void initState() {

     // getdata();
     super.initState();
   }

  // getdata () async{
  //   Position position = await _determinePosition();
  //   final coordinates = new Coordinates(
  //       position.latitude, position.longitude);
  //   var addresses = await Geocoder.local.findAddressesFromCoordinates(
  //       coordinates);
  //
  //   var first = addresses.first;
  //   address = first.locality + ", " + first.postalCode + ", (" + first.addressLine + "), " + first.subLocality;
  //   print(address);
  //   print(' ${first.locality}, ${first.adminArea},${first.subLocality}, ${first.subAdminArea},${first.addressLine}, ${first.featureName},${first.thoroughfare}, ${first.subThoroughfare}');
  //   return first.locality;
  // }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error("Location services are disabled.");
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          "Location permissions are permantly denied. we cannot request permissions.");
    }

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        return Future.error(
            "Location permissions are denied (actual value: $permission).");
      }
    }

    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  final List<String> imageList =[
    'lib/images/pngwing.com.png',
    'assets/burger.png',
    'assets/images/food1.png',
    'assets/pizza.png'  ];
  List dinnerList =
  [
    {
      "image": "assets/images/food1.png",
      "name": "Dinner",
    },
    {
      "image": "assets/images/food.png",
      "name": "Shakes",
    },
    {
      "image": "assets/images/food1.png",
      "name": "Sweets",
    },
    {
      "image": "assets/images/food.png",
      "name": "Nothing",
    },
    {
      "image": "assets/images/food1.png",
      "name": "Nothing",
    },
    {
      "image": "assets/images/food.png",
      "name": "Nothing",
    },
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(

        backgroundColor: Colors.white,
        body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Flexible(child: Text(address, overflow: TextOverflow.visible, style: TextStyle(color: Colors.grey, fontSize: 12),)),
                    Padding(
                      padding: const EdgeInsets.only(right: 88),
                      child: IconButton(
                          icon: const Icon(Icons.search_outlined, size: 20.0, color: Colors.black,),
                          onPressed: () {
                            setState(() {
                              // getdata ();
                            });
                          }
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: GestureDetector(
                        onTap:  () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SettingsWidget()),
                          );
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'lib/imagess/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   alignment: Alignment.centerRight,
                    //   child: IconButton(icon:const Icon(
                    //     Icons.room_rounded,
                    //     size: 20.0, color: Colors.black,),
                    //       onPressed: () {}),
                    // )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey
                  ),
                  height: 60,
                  width: double.maxFinite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("50% off", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                          Text("  offer only for today")
                        ],
                      ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Big sale,", style: TextStyle(fontSize: 16),),
                              Text(" Only Today", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            ],
                          ),


                    ],
                  ),
                ),
              ),
              Text("Offers of the day"),
              // Container(
              //     height: 250.0,
              //       width: double.infinity,
              //       child: Align(
              //
              //         child: Center(
              //           child: ListView(
              //             padding: EdgeInsets.all(8),
              //             children: [
              //               SizedBox(
              //                 height: 230,
              //                 width: double.infinity,
              //                 child: Carousel(
              //                   dotSize: 6.0,
              //                   dotSpacing: 15.0,
              //                   dotPosition: DotPosition.bottomCenter,
              //                   images: [
              //                     Image.asset('assets/avatar.jpg'),
              //                     Image.asset('assets/biryani.png'),
              //                     Image.asset('assets/burger.png'),
              //                     Image.asset('assets/drink.png'),
              //                     Image.asset('assets/pizza.png'),
              //                     Image.asset('assets/salan.png'),
              //                   ],
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),
              //       )
              //   ),


              // Container(
              //     height: 250.0,
              //           width: double.infinity,
              //     child: CarouselSlider(
              //       options: CarouselOptions(
              //           viewportFraction: .6,
              //           aspectRatio: 1.2,
              //           enlargeCenterPage: true,
              //           scrollDirection: Axis.horizontal,
              //           autoPlay: true,
              //           onPageChanged: (index, reason) {
              //             setState(() {
              //               _current = index;
              //             });
              //           }
              //       ),
              //       items: imageList.map((e) => ClipRRect(
              //     borderRadius: BorderRadius.circular(8),
              //     child: Stack(
              //       fit: StackFit.expand,
              //       children: [
              //         Image.network(e,width: 1000,
              //           height: 350,
              //           fit: BoxFit.cover,)
              //       ],
              //     ),
              //   ),
              //   ).toList(),
              //     )
              // ),
              // Positioned(
              //   top: 50,
              //   right: 10,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: imageList.map((url) {
              //       int index = imageList.indexOf(url);
              //       return Container(
              //         width: 8.0,
              //         height: 8.0,
              //         margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
              //         decoration: BoxDecoration(
              //           shape: BoxShape.circle,
              //           color: _current == index
              //               ? Colors.white60
              //               : Color.fromRGBO(0, 0, 0, 0.4),
              //         ),
              //       );
              //     }).toList(),
              //   ),
              // ),

              Container(
                  height: 250.0,
                    width: double.infinity,
                    child: Align(

                      child: Center(
                        child: CarouselSlider(

                          options: CarouselOptions(

                            enlargeCenterPage: true,
                            enableInfiniteScroll: false,
                            autoPlay: true,
                          ),
                          items: imageList.map((e) => ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.asset(e,width: 1000,
                                  height: 350,
                                  fit: BoxFit.cover,)
                              ],
                            ),
                          ),
                          ).toList(),

                        ),
                      ),
                    )
                ),

              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Whats in your mind?", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 16.0,
                  ),
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10.0,
                          crossAxisSpacing: 0.0
                      ),
                      padding: EdgeInsets.only(top: 20.0, bottom: 20),
                      itemCount: dinnerList.length,
                      itemBuilder: (BuildContext context, int index){
                        return GestureDetector(
                          onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage())),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height: 180.0,
                                    width:160.0,
                                    padding: EdgeInsets.only(bottom: 24.0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(32.0),
                                    ),
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                            child: Text(dinnerList[index]["name"], style: TextStyle(fontSize: 16.0,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black87), ),
                                          ),

                                        ]),
                                  ),
                                  Positioned(
                                      top: -40.0,
                                      bottom: 0.0,
                                      left: 20.0,
                                      right: 20.0,
                                      child:Container(
                                        height: 60,
                                        width:60,
                                        child:Image.asset(dinnerList[index]["image"], height: 130, width: 120,),
                                      )
                                  ),
                                ]),
                          ),
                        );
                      }),
                ),
              ),
              // Expanded(
              //   child: Container(
              //       height: 150,
              //       child: GestureDetector(
              //         onTap: (){},
              //         child: GridView.count(
              //             scrollDirection: Axis.horizontal,
              //             crossAxisCount: 2,
              //             mainAxisSpacing: 0,
              //             shrinkWrap: false,
              //             children: List.generate(10, (index) {
              //               return
              //                   Padding(
              //                       padding: const EdgeInsets.all(2.0),
              //                       child: Container(
              //                         height: 100,
              //                           width: 100,
              //                       child: Padding(
              //                         padding: const EdgeInsets.all(4.0),
              //                         child: Column(
              //                           children: [
              //                             Image.asset("assets/avatar.jpg", height: 70, width: 100,),
              //                             Text("food name"),
              //                           ],
              //                         ),
              //                       ),),
              //                   );})))),
              // ),
              // Expanded(
              //       child: SizedBox(
              //         height: size.height,
              //         child: Container(
              //           color: Colors.grey,
              //           height: size.height,
              //           child: GestureDetector(
              //               onTap: (){
              //                 print("nothing");
              //               },
              //               child: GridView.count(
              //                   scrollDirection: Axis.vertical,
              //                   crossAxisCount: 1,
              //                   shrinkWrap: true,
              //                   children: List.generate(10, (index) {
              //                     return Padding(
              //                       padding:  EdgeInsets.zero,
              //                       child: Padding(
              //                         padding: const EdgeInsets.all(8.0),
              //                         child: Column(
              //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                           crossAxisAlignment: CrossAxisAlignment.start,
              //                           children: [
              //                         Container(
              //                               color:Colors.brown,
              //                                 child: Text("Image Name")),
              //
              //                             Image.asset("assets/avatar.jpg", height: 250, width: 200,),
              //                             Text("Price"),
              //                           ],
              //                         ),
              //                       ),
              //                     );
              //                   }))),
              //         ),
              //       )
              // ),
                    // ListView.builder(
                    //   scrollDirection: Axis.horizontal,
                    //     itemCount: 5,
                    //     itemBuilder: (BuildContext context, int index) {
                    //       return ListTile(
                    //           leading: const Icon(Icons.list),
                    //           trailing: const Text(
                    //             "GFG",
                    //             style: TextStyle(color: Colors.green, fontSize: 15),
                    //           ),
                    //           title: Text("List item $index"));
                    //     }),
            ]));
  }

  }