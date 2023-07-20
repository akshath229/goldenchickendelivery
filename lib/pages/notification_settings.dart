import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsSetting extends StatefulWidget {
  const NotificationsSetting({Key? key}) : super(key: key);

  @override
  _NotificationsSettingState createState() => _NotificationsSettingState();
}

class _NotificationsSettingState extends State<NotificationsSetting> {
  bool _isEnabledAllNotifications = false;
  bool _isEnabledPromotionsAndOffers = false;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: InkWell(
            onTap: () async {

            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 24,
            ),
          ),
          title: Text(
            'Notification Settings',
            style: GoogleFonts.readexPro(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              buildSwitchRow(
                title: 'All Notifications',
                value: _isEnabledAllNotifications,
                onChanged: (value) {
                  setState(() {
                    _isEnabledAllNotifications = value;
                  });
                },
              ),
              SizedBox(height: 12), // some space between switches
              buildSwitchRow(
                title: 'Promotions and Offers',
                value: _isEnabledPromotionsAndOffers,
                onChanged: (value) {
                  setState(() {
                    _isEnabledPromotionsAndOffers = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSwitchRow({
    required String title,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.readexPro(color: Colors.black),
        ),
        Switch(
          value: value,
          onChanged: onChanged,
          activeColor: Color(0xFFDAC027),
          activeTrackColor: Color(0xFFDAC027),
          inactiveTrackColor: Color(0xFF9CA2B4),
          inactiveThumbColor: Color(0xFF9CA2B4),
        ),
      ],
    );
  }
}
