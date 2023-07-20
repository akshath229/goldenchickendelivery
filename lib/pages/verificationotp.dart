import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


import 'locationoptions.dart';



class VerificationcodeWidget extends StatefulWidget {
  const VerificationcodeWidget({Key? key}) : super(key: key);

  @override
  _VerificationcodeWidgetState createState() => _VerificationcodeWidgetState();
}

class _VerificationcodeWidgetState extends State<VerificationcodeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _pinEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pinEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
            size: 24,
          ),
          elevation: 0,
        ),
        body: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {},
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Confirm your Code',
                      style: GoogleFonts.readexPro(
                        fontSize: 26,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(44, 8, 44, 0),
                      child: Text(
                        'Verification OTP sent to 743978512',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.readexPro(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Form(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(height: 68,width: 64,
                          child: TextField(
                            onChanged: (value) {
                              if (value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            style: Theme.of(context).textTheme.headlineSmall,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                            ],

                          ),),
                          SizedBox(height: 68,width: 64,
                          child: TextField(
                            onChanged: (value) {
                              if (value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            style: Theme.of(context).textTheme.headlineSmall,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                            ],

                          ),),
                          SizedBox(height: 68,width: 64,
                          child: TextField(
                            onChanged: (value) {
                              if (value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                            ],

                          ),),
                          SizedBox(height: 68,width: 64,
                          child: TextField(
                            onChanged: (value) {
                              if (value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            style: Theme.of(context).textTheme.headlineSmall,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                            ],

                          ),),

                        ],
                      )),
                    ),

                    // Pin code field goes here...
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: PinInputTextField(
                        controller: _pinEditingController,
                        pinLength: 4,
                        
                        textInputAction: TextInputAction.done,
                        onSubmit: (pin) {
                          if (pin == '2222') {
                            // Correct pin, navigate to the next page
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Locationoptions()),
                            );
                          } else {
                            // Incorrect pin, show an error
                            showSnackBar('Incorrect PIN. Please try again.');
                          }
                        }, decoration: null,
                      ),
                    ),

                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(105, 23, 0, 0),
                            child: Icon(
                              Icons.incomplete_circle_outlined,
                              size: 24,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(10, 23, 0, 0),
                            child: Text(
                              'Auto Fetching OTP',
                              style: GoogleFonts.readexPro(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            width: double.maxFinite,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Locationoptions()
                    )
                );
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
                    "Confirm & Continue",
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

  void showSnackBar(String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  PinInputTextField({required TextEditingController controller, required int pinLength, required decoration, required TextInputAction textInputAction, required Null Function(dynamic pin) onSubmit}) {}
}

class UnderlineDecoration {
}
