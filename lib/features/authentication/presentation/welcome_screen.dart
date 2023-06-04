import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/features/authentication/presentation/login_page.dart';
import 'package:portfolioapp/features/authentication/presentation/sign_up_page.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 80),
        child: Column(
          children: [
            Image.asset('assets/images/Blogging-bro.png'),
            Text(
              'Welcome',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, fontSize: 40),
            ),
            Text(
              'Create your portfolio and find your dream job to fullfill your wishes',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: const Color(0xff8D8D8D)),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: SizedBox(
                width: 250,
                height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff0E101B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 120),
                        child: Text(
                          'Login',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700, fontSize: 16.0),
                        ),
                      ),
                      const Icon(Icons.chevron_right_rounded)
                    ],
                  ),
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Don't have an account ? ",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff8D8D8D),
                    ),
                  ),
                  TextSpan(
                    text: "Sign up",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff000000),
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Handle sign up button tap here
                        // For example, navigate to the sign-up screen
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
