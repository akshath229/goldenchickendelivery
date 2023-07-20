import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/home/home_screen.dart';
import 'firstpahe.dart';



class ProfilecompletionWidget extends StatefulWidget {
  const ProfilecompletionWidget({Key? key}) : super(key: key);

  @override
  _ProfilecompletionWidgetState createState() =>
      _ProfilecompletionWidgetState();
}

class _ProfilecompletionWidgetState extends State<ProfilecompletionWidget> {
  // late ProfilecompletionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => ProfilecompletionModel());
    //
    // _model.textController1 ??= TextEditingController();
    // _model.textController2 ??= TextEditingController();
    // _model.textController3 ??= TextEditingController();
    // _model.textController4 ??= TextEditingController();
    // _model.textController5 ??= TextEditingController();
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:  Colors.white,
          automaticallyImplyLeading: false,
          leading: Icon(
            Icons.arrow_back_ios,
            color:  Colors.black,
            size: 24,
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()
                    )
                );
              },
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 14, 0),
                child: Text(
                  'Skip',
                  style: TextStyle(color:  Colors.black,fontSize: 16),
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 683,
                  height: 814,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 30),
                        child: Text(
                          'Complete your profile',
                          style: GoogleFonts.readexPro(fontSize: 23,fontWeight: FontWeight.w400)
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                        child: Container(
                          width: 120,
                          height: 120,
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
                      Text(
                        'Change Photo',
                        style:GoogleFonts.readexPro(fontSize: 15,fontWeight: FontWeight.w400)
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                        child: TextFormField(

                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'First name',
                            labelStyle: GoogleFonts.readexPro(fontSize: 14,),
                            hintStyle: GoogleFonts.readexPro(fontSize: 14,),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color:Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          style: GoogleFonts.readexPro(fontSize: 15)

                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                        child: TextFormField(

                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Last name',
                            labelStyle: GoogleFonts.readexPro(fontSize: 14,),
                            hintStyle: GoogleFonts.readexPro(fontSize: 14,),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          style: GoogleFonts.readexPro(fontSize: 14,),

                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                        child: TextFormField(

                          autofocus: true,
                          obscureText: false,
                          initialValue: "7561583761",
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            labelStyle: GoogleFonts.readexPro(fontSize: 14,),
                            hintStyle: GoogleFonts.readexPro(fontSize: 14,),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color:Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          style:   GoogleFonts.readexPro(fontSize: 14,),

                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                        child: TextFormField(

                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                            labelStyle: GoogleFonts.readexPro(fontSize: 14,),
                            hintStyle: GoogleFonts.readexPro(fontSize: 14,),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color:Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color:Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          style:  GoogleFonts.readexPro(fontSize: 14,),

                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                        child: TextFormField(

                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'DD-MM-YYYY',
                            labelStyle: GoogleFonts.readexPro(fontSize: 14,),
                            hintStyle: GoogleFonts.readexPro(fontSize: 14,),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color:Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          style: GoogleFonts.readexPro(fontSize: 12)
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Container(
            width: double.maxFinite,
            child: FloatingActionButton(
              onPressed: () {
                // Handle the floating action button tap
                // You can remove this if you want, since the PinInputTextField already has an onSubmit callback
                print('Floating Action Button tapped');
              },
              child: Container(
                height: 70,
                width: double.maxFinite,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.yellow.shade800,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    "Update Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
