import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/features/authentication/presentation/get_otp_screen.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
          child: Column(
            children: [
              Image.asset('assets/images/Forgot password-rafiki.png'),
              Text(
                'Forgot Password?',
                style: GoogleFonts.poppins(
                    fontSize: 30, fontWeight: FontWeight.w600),
              ),
              Text(
                textAlign: TextAlign.center,
                'Enter your phone number to get the OTP to reset your password.',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff8D8D8D),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                child: TextFormField(
                  onChanged: (value) {},
                  textCapitalization: TextCapitalization.words,
                  cursorColor: Colors.white,
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff666666).withOpacity(0.60)),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Phone number',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
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
              SizedBox(
                width: double.infinity,
                height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff4C67ED),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const OTPScreen()));
                  },
                  child: Text(
                    'Get OTP',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 18),
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
