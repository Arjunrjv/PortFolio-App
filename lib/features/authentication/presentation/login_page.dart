import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/features/authentication/presentation/forgot_password.dart';
import 'package:portfolioapp/features/jobs/presentation/home_page.dart';
import 'package:portfolioapp/features/profile/presentation/portfolio_creation_page1.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String userEmail = '';
  String userPassword = '';

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(30.0),
      color: const Color(0xffF5F6FC),
      child: ListView(
        children: [
          Image.asset('assets/images/Mobile login-rafiki.png'),
          Text(
            textAlign: TextAlign.center,
            'LOGIN',
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 12.0,
                      spreadRadius: 1.0,
                      color: Color.fromARGB(255, 238, 238, 238),
                      offset: Offset(0, 5))
                ],
                color: const Color(0xffFFFFFF),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: TextFormField(
                      onChanged: (value) {
                        userEmail = value;
                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 12.0),
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.person),
                        prefixIconColor: const Color(0xffA2A9C5),
                        hintText: 'Email',
                        hintStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffA2A9C5),
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 158, 158, 159),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: TextFormField(
                      obscureText: !_passwordVisible,
                      onChanged: (value) {
                        userPassword = value;
                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 12.0),
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.lock),
                        prefixIconColor: const Color(0xffA2A9C5),
                        hintText: 'Password',
                        hintStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffA2A9C5),
                        ),
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
                            color: const Color(0xff686970),
                          ),
                        ),
                        suffixIconColor: const Color(0xffA2A9C5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
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
                  if (userEmail.isEmpty || userPassword.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: const Color(0xff0E101B),
                        content: Text(
                          "Fields can't be empty.",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.red),
                        ),
                      ),
                    );
                  } else {
                    try {
                      final user = await _auth.signInWithEmailAndPassword(
                        email: userEmail,
                        password: userPassword,
                      );

                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: const Color(0xff0E101B),
                          content: Text(
                            "E-mail or password does not match",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.red),
                          ),
                        ),
                      );
                    }
                  }
                },
                child: Text(
                  'Login',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700, fontSize: 16.0),
                ),
              ),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                ForgotPassWordScreen.ForgotPasswordBottomSheet(context);
              },
              child: Text(
                'Forgot Password?',
                style: GoogleFonts.poppins(
                    color: const Color(0xff0E101B),
                    fontWeight: FontWeight.w700),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
