
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rms_delivery2/pages/notification_settings.dart';
import 'package:rms_delivery2/pages/otp.dart';
import 'package:rms_delivery2/screens/home/home.dart';
import 'package:rms_delivery2/screens/home/home_screen.dart';
import 'package:rms_delivery2/screens/home/widget/food_details.dart';
import 'components/bottemsheet.dart';


void main() async {

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
          useMaterial3: true,

      ),
      home: otplogin(),
    );
  }
}
