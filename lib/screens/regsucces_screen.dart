import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class RegSuccessScreen extends StatelessWidget {
  static String id = 'regsuccess_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightColor,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: kLightColor),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/success.png',
                      ),
                      SizedBox(height: 50),
                      Text(
                        'Registration Successful!',
                        style: GoogleFonts.patuaOne(
                            color: Colors.black, fontSize: 25),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 35.0),
                        child: Material(
                          elevation: 5.0,
                          color: Colors.deepOrangeAccent[100],
                          borderRadius: BorderRadius.circular(30.0),
                          child: MaterialButton(
                            onPressed: () {},
                            minWidth: 200.0,
                            height: 42.0,
                            child: Text(
                              'Back to Log In',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 120.0),
            child: Icon(
              Icons.check_circle,
              size: 120,
              color: Colors.deepOrangeAccent,
            ),
          ),
        ],
      ),
    );
  }
}
