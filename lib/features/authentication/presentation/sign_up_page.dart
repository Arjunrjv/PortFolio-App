import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/features/profile/presentation/portfolio_creation_page1.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _auth = FirebaseAuth.instance;
  String userEmail = '';
  String userPassword = '';

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
        color: const Color(0xffFFFFFF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/Mobile login-bro (1).png'),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, top: 30.0),
              child: TextFormField(
                onChanged: (value) {
                  userEmail = value;
                },
                cursorColor: const Color(0xff666666).withOpacity(0.60),
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff666666).withOpacity(0.60)),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'E-mail',
                  hintStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: const Color(0xff666666).withOpacity(0.60)),
                  filled: true,
                  fillColor: const Color(0xffC5C5C5).withOpacity(0.10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1.5,
                        color: const Color(0xffEAEAEA).withOpacity(0.80)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1.5,
                        color: const Color(0xffEAEAEA).withOpacity(0.80)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextFormField(
                obscureText: !_passwordVisible,
                onChanged: (value) {
                  userPassword = value;
                },
                cursorColor: const Color(0xff666666).withOpacity(0.60),
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff666666).withOpacity(0.60)),
                decoration: InputDecoration(
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
                  isDense: true,
                  hintText: 'Password',
                  hintStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: const Color(0xff666666).withOpacity(0.60)),
                  filled: true,
                  fillColor: const Color(0xffC5C5C5).withOpacity(0.10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1.5,
                        color: const Color(0xffEAEAEA).withOpacity(0.80)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1.5,
                        color: const Color(0xffEAEAEA).withOpacity(0.80)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
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
                  child: Text(
                    'Sign up with email',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700, fontSize: 16.0),
                  ),
                  onPressed: () async {
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
                        builder: (context) => const PortfolioCreationPage1()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
