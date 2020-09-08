import 'package:crammers_hub/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import './register_screen.dart';

class OnboardingScreen extends StatefulWidget {
  static String id = 'onboarding_screen';

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Hero(
                        tag: 'logo',
                        child: SvgPicture.asset(
                          'assets/images/book.svg',
                          width: 200,
                          height: 200,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Crammers Hub',
                        style: GoogleFonts.patuaOne(
                          color: kTextColor,
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        'Your one stop solution for semester exams...',
                        style: GoogleFonts.dancingScript(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Material(
                          elevation: 5.0,
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(30.0),
                          child: MaterialButton(
                            onPressed: () {},
                            minWidth: 200.0,
                            height: 42.0,
                            child: Text(
                              'Log In',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Material(
                          elevation: 5.0,
                          color: Colors.deepOrangeAccent[100],
                          borderRadius: BorderRadius.circular(30.0),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.pushNamed(context, RegisterScreen.id);
                            },
                            minWidth: 200.0,
                            height: 42.0,
                            child: Text(
                              'Register',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
