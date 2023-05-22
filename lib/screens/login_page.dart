import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/screens/sign_up_page.dart';
import 'package:portfolioapp/screens/portfolio_creation_page1.dart';

class PortfolioHome extends StatefulWidget {
  const PortfolioHome({super.key});

  @override
  State<PortfolioHome> createState() => _PortfolioHomeState();
}

class _PortfolioHomeState extends State<PortfolioHome> {
  final _auth = FirebaseAuth.instance;
  String userEmail = '';
  String userPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(30.0),
      color: const Color(0xffF5F6FC),
      child: ListView(
        children: [
          const SizedBox(height: 100),
          const Align(
            alignment: Alignment.centerLeft,
            child: FlutterLogo(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 55.0, bottom: 40.0),
            child: Text(
              'Hi there!\nWelcome to portFolio.',
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: const Color(0xff0E101B),
              ),
            ),
          ),
          Container(
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
                      hintStyle: GoogleFonts.inter(
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
                    obscureText: true,
                    onChanged: (value) {
                      userPassword = value;
                    },
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 12.0),
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.lock),
                        prefixIconColor: const Color(0xffA2A9C5),
                        hintText: 'Password',
                        hintStyle: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffA2A9C5),
                        ),
                        suffixIcon: TextButton(
                          onPressed: () {},
                          child: Text(
                            'FORGOT?',
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                  ),
                ),
              ],
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
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: userEmail, password: userPassword);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PortfolioCreationPage1()));
                  } catch (e) {
                    print(e);
                  }
                },
                child: Text(
                  'Login',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700, fontSize: 16.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: SizedBox(
              width: double.infinity,
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
                      builder: (context) => const AccountCreationPage()));
                },
                child: Text(
                  'Create a new account',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700, fontSize: 16.0),
                ),
              ),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Google login',
                style: GoogleFonts.inter(
                    color: const Color(0xff4C67ED),
                    fontWeight: FontWeight.w700),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
