import 'package:crammers_hub/screens/regsucces_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterScreen extends StatefulWidget {
  static String id = 'register_screen';
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kLightColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                  width: double.infinity,
                ),
                Center(
                  child: Text(
                    'Register',
                    style: GoogleFonts.patuaOne(
                        fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  width: 180,
                  child: Divider(
                    color: kPrimaryColor,
                    height: 10,
                  ),
                ),
                Hero(
                  tag: 'logo',
                  child: SvgPicture.asset('assets/images/book.svg'),
                ),
                SizedBox(height: 50),
                TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: 'Enter your email...',
                    labelText: 'Email',
                    suffixIcon: Icon(
                      Icons.mail,
                      color: Colors.deepOrangeAccent[100],
                    ),
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintText: 'Create a password...',
                      labelText: 'Password',
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.deepOrangeAccent[100],
                      ),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: kPrimaryColor, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: kPrimaryColor, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintText: 'Confirm your password...',
                      labelText: 'Confirm Password',
                      suffixIcon: Icon(Icons.remove_red_eye,
                          color: Colors.deepOrangeAccent[100]),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: kPrimaryColor, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: kPrimaryColor, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 50.0),
                  child: Material(
                    elevation: 5.0,
                    color: Colors.deepOrangeAccent[100],
                    borderRadius: BorderRadius.circular(30.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RegSuccessScreen.id);
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
      ),
    );
  }
}
