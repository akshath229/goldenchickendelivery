
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class PaymentdetailsWidget extends StatefulWidget {
  const PaymentdetailsWidget({Key? key}) : super(key: key);

  @override
  _PaymentdetailsWidgetState createState() => _PaymentdetailsWidgetState();
}

class _PaymentdetailsWidgetState extends State<PaymentdetailsWidget> {
  // late PaymentdetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => PaymentdetailsModel());
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
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {

            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 24,
            ),
          ),
          title: Text(
            'Add Payment methods',
            style: GoogleFonts.readexPro(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),

          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 20, 25, 0),
                child: Text(
                  'CARDS',
                  style: GoogleFonts.readexPro(fontSize: 17,fontWeight: FontWeight.w300,color: Colors.grey),

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
                      borderRadius: BorderRadius.circular(70),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.9, 0),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 12, 0),
                              child: Icon(
                                Icons.add_card,
                                color:
                                Colors.grey.shade700,
                                size: 18,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Text(
                                'Add credit or debit card',
                                style: GoogleFonts.readexPro(fontSize: 14,fontWeight: FontWeight.w600),

                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.9, 0),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                              child: Icon(
                                Icons.add,
                                color: Color(0xFFDAC027),
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(170, 0, 0, 0),
                      child:

                    Text(
                      'UPI',
                      style: GoogleFonts.readexPro(fontSize: 17,fontWeight: FontWeight.w300,color: Colors.grey),
                    ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
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
                      borderRadius: BorderRadius.circular(70),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.9, 0),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 12, 0),
                              child: Icon(Icons.credit_card,size: 20,)
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Text(
                                'Google Pay UPI',
                                style: GoogleFonts.readexPro(fontSize: 14,fontWeight: FontWeight.w600),

                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.9, 0),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                              child: Icon(
                                Icons.add,
                                color: Color(0xFFDAC027),
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
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
                      borderRadius: BorderRadius.circular(70),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.9, 0),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 12, 0),
                              child: Icon(Icons.confirmation_num_sharp),)
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Text(
                                'Apple Pay UPI',
                                style: GoogleFonts.readexPro(fontSize: 14,fontWeight: FontWeight.w600),

                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.9, 0),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                              child: Icon(
                                Icons.add,
                                color: Color(0xFFDAC027),
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
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
                      borderRadius: BorderRadius.circular(70),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.9, 0),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 12, 0),
                              child: Icon(
                                Icons.add_card_outlined,
                                color:
                                Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: Text(
                                'Add UPI ID',
                                style: GoogleFonts.readexPro(fontSize: 14,fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.9, 0),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                              child: Icon(
                                Icons.add,
                                color: Color(0xFFDAC027),
                                size: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
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
