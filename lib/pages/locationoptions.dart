import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rms_delivery2/pages/profilecompletion.dart';



class Locationoptions extends StatefulWidget {
  const Locationoptions({super.key});

  @override
  State<Locationoptions> createState() => _LocationoptionsState();
}

class _LocationoptionsState extends State<Locationoptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
      actions: [Padding(
        padding: const EdgeInsets.only(right: 13),
        child: GestureDetector(onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilecompletionWidget()
              )
          );
          },
            child: Text("Skip",style: GoogleFonts.readexPro(fontSize: 15))),
      )]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 12,),
             Text("What's your location?",style: GoogleFonts.readexPro(fontSize: 24,fontWeight: FontWeight.bold ),),
             Text("We need your loction to deliver your cravings",style: GoogleFonts.readexPro(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black87 ),),
              SizedBox(height: 95),
              Image.asset("lib/imagess/logo.png",height: 305),
              SizedBox(height: 50,),
              GestureDetector(

                child: Container(height: 65,
                  padding: const EdgeInsets.all(2),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:  Center(
                    child: Text(
                      "Allow location access",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18,),

              Text("Enter Location Manually",style: GoogleFonts.readexPro(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.yellow.shade900 )),
            ],
          ),
        ),
      ),
    );
  }
}

