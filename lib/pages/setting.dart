
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:rms_delivery2/pages/paymentoptions.dart';


import 'locationoptions.dart';
import 'notification_settings.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  // late SettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => SettingsModel());
  }

  @override
  void dispose() {
    // _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
            size: 24,
          ),

          title: Text(
            'Settings',
            style: GoogleFonts.readexPro(fontSize: 20,fontWeight: FontWeight.w700),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 0,
                        color: Color(0x33000000),
                        offset: Offset(0, 0),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Color(0xFFDAC027),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFFDAC027),
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child:  Image.asset(
                                "lib/imagess/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style:
                                GoogleFonts.readexPro(fontSize: 24,fontWeight: FontWeight.w400),
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  '756821344',
                                  style:
                                  GoogleFonts.readexPro(fontSize: 14,fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(65, 0, 0, 0),
                          child: Text(
                            'Edit',
                            textAlign: TextAlign.end,
                            style:
                            GoogleFonts.readexPro(fontSize: 16,fontWeight: FontWeight.w800,color: Colors.amber),

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 0, 0),
                child: Text(
                  'Account',
                  style:
                  GoogleFonts.readexPro(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey.shade700),

                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentdetailsWidget()),
                    );

                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0,
                          color: Color(0x3416202A),
                          offset: Offset(0, 0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(100),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Text(
                                'Payment Options',
                                style:
                                GoogleFonts.readexPro(fontSize: 16,fontWeight: FontWeight.w500),

                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.9, 0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {

                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0,
                          color: Color(0x3416202A),
                          offset: Offset(0, 0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(120),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Text(
                                'Address',
                                style:  GoogleFonts.readexPro(fontSize: 16,fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.9, 0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => NotificationsSetting()),
                       );

                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0,
                          color: Color(0x3416202A),
                          offset: Offset(0, 0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(100),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Text(
                                'Notification Settings',
                                style: GoogleFonts.readexPro(fontSize: 16,fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.9, 0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 0, 0),
                child: Text(
                  'General',
                  style: GoogleFonts.readexPro(fontSize: 16,fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 0,
                        color: Color(0x3416202A),
                        offset: Offset(0, 0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(100),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.help_outline_rounded,
                          color: Colors.black,
                          size: 24,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: Text(
                              'Support',
                              style:  GoogleFonts.readexPro(fontSize: 16,fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.9, 0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 0,
                        color: Color(0x3416202A),
                        offset: Offset(0, 0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(100),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.privacy_tip_rounded,
                          color: Colors.black,
                          size: 24,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: Text(
                              'Terms of Service',
                                style:  GoogleFonts.readexPro(fontSize: 16,fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.9, 0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 0,
                        color: Color(0x3416202A),
                        offset: Offset(0, 0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(100),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.power_settings_new,
                          color: Colors.black,
                          size: 24,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: Text(
                              'Logout',
                              style:  GoogleFonts.readexPro(fontSize: 16,fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
