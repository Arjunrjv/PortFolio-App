import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/screens/page_after_signup.dart';

class AccountCreationPage extends StatefulWidget {
  const AccountCreationPage({super.key});

  @override
  State<AccountCreationPage> createState() => _AccountCreationPageState();
}

class _AccountCreationPageState extends State<AccountCreationPage> {
  final collegeDomain = 'college.ac.in';
  final _auth = FirebaseAuth.instance;
  String userEmail = '';
  String userPassword = '';

  bool _passwordVisible = false;

  bool isValidEmail(String userEmail) {
    final emailDomain = userEmail.split('@').last;
    return emailDomain == collegeDomain;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up'),
        primary: true,
        elevation: 0,
      ),
      body: Container(
        color: const Color(0xff0E101B),
        child: Padding(
          padding: const EdgeInsets.only(top: 120.0),
          child: Column(
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xffFFFFFF)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FlutterLogo(size: 50),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, right: 30.0, bottom: 20.0, top: 30.0),
                      child: TextFormField(
                        onChanged: (value) {
                          userEmail = value;
                        },
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(top: 12.0, left: 10.0),
                          labelText: 'EMAIL',
                          labelStyle: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xff686970),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2, color: Color(0xff343434)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2, color: Color(0xff343434)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, right: 30.0, bottom: 20.0),
                      child: TextFormField(
                        obscureText: !_passwordVisible,
                        onChanged: (value) {
                          userPassword = value;
                        },
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(top: 12.0, left: 10.0),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                          suffixIconColor: const Color(0xffA2A9C5),
                          labelText: 'PASSWORD',
                          labelStyle: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xff686970),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2, color: Color(0xff343434)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2, color: Color(0xff343434)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff4C67ED),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    onPressed: () async {
                      if (isValidEmail(userEmail) &&
                          userEmail.endsWith('@$collegeDomain')) {
                        try {
                          final newUser =
                              await _auth.createUserWithEmailAndPassword(
                            email: userEmail,
                            password: userPassword,
                          );
                        } catch (e) {
                          print(e);
                        }
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const PageAfterSignup()));
                      } else {
                        // Show an error message to the user
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            backgroundColor: const Color(0xff0E101B),
                            title: Text(
                              'Invalid email',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            content: Text(
                              'Please enter a valid email address ending with @$collegeDomain.',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            actions: [
                              TextButton(
                                child: Text(
                                  'OK',
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red),
                                ),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    child: Text(
                      'Sign up with email',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700, fontSize: 16.0),
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
