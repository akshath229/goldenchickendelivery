// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:rms_delivery2/pages/setting.dart';
//
// import '../screens/home/home_screen.dart';
// import '../screens/home/widget/cartpagewaste2.dart';
//
//
// import 'locationoptions.dart';
//
//
// class firstpage extends StatefulWidget {
//   const firstpage({Key? key}) : super(key: key);
//
//   @override
//   State<firstpage> createState() => _firstpageState();
// }
//
// class _firstpageState extends State<firstpage> {
//   int _currentIndex = 0;
//   final List<Widget> _pages = [
//     HomeScreen(),
//     OrderedWidget(onCountChanged: (int value) {  },),
//     SettingsWidget()
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_currentIndex],
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.only(bottom: 12, left: 24, right: 24),
//         child: Container(
//           height: 70,
//           decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadiusDirectional.circular(29)),
//           child: GNav(
//             gap: 8,
//             tabBackgroundColor: Colors.grey.shade300,
//             padding: EdgeInsets.only(right: 16, left: 16, bottom: 20, top: 20),
//             tabs: [
//               GButton(icon: Icons.home, text: "Home"),
//               GButton(icon: Icons.shopping_cart, text: "Cart"),
//               GButton(icon: Icons.settings, text: "Settings"),
//             ],
//             selectedIndex: _currentIndex,
//             onTabChange: (index) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
