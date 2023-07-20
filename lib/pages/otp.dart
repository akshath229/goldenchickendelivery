import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rms_delivery2/pages/verificationotp.dart';



class otplogin extends StatefulWidget {
  const otplogin({super.key});

  @override
  State<otplogin> createState() => _otploginState();
}

class _otploginState extends State<otplogin> {
  final TextEditingController phoneController = TextEditingController();

  Country SelectedCountry = Country(
    phoneCode: '971',
    countryCode: 'AE',
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: 'United Arab Emirates',
    example: 'United Arab Emirates',
    displayName: 'United Arab Emirates (+971)',
    displayNameNoCountryCode: 'UAE',
    e164Key: "",
  );
  @override
  Widget build(BuildContext context) {
    phoneController.selection = TextSelection.fromPosition(
        TextPosition(offset: phoneController.text.length));
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 12,),
              Text("Enter your mobile number to get \nOTP",
                style: GoogleFonts.jost(fontWeight: FontWeight.w800,fontSize: 33),),

              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Image.asset("lib/imagess/golden chick-1.png",height: 200),
              ),
              SizedBox(height: 22,),



              //phone otp


              TextFormField(keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    phoneController.text = value;
                  });
                },
                controller: phoneController,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow.shade800),
                  ),
                  // fillColor: Colors.yellow.shade100,
                  // filled: true,
                  labelText: 'Phone Number',labelStyle: TextStyle(color: Colors.black,fontSize: 18),
                  //hintText: "Phone number",
                  hintStyle: TextStyle(color: Colors.grey[500],
                  ),
                  prefixIcon: Container(height: 70,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(onTap: () {
                        showCountryPicker(context: context,
                            countryListTheme: CountryListThemeData(
                              bottomSheetHeight: 450,
                            ),
                            onSelect: (value){
                              setState(() {
                                SelectedCountry = value;
                              });
                            });
                      },
                        child: Padding(
                          padding:  EdgeInsets.all(12.0),
                          child: Text("${SelectedCountry.flagEmoji} + ${SelectedCountry.phoneCode}"
                            ,style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  suffixIcon: phoneController.text.length > 9 ? Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green
                    ),
                    child: Icon(Icons.done,color: Colors.white,size: 20),
                  ) : null,
                ),
              ),






              SizedBox(height: 32,),




          GestureDetector(onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VerificationcodeWidget()
                )
            );},

            child: Container(height: 65,width: double.maxFinite,
              padding: const EdgeInsets.all(2),

              decoration: BoxDecoration(
                color: Colors.yellow.shade800,
                borderRadius: BorderRadius.circular(12),
              ),
              child:  Center(
                child: Text(
                  "Get OTP",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: RichText(
              text: TextSpan(
                text: 'By clicking I accept the ',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 12,
                ),
                children: [
                  TextSpan(
                    text: 'terms of service',
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: ' and ',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(text: 'privacy policy.', style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                  ),

                ],
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
