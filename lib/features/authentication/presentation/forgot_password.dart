import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/features/authentication/presentation/forget_password_mail_screen.dart';
import 'package:portfolioapp/features/authentication/presentation/forget_password_phone_screen.dart';

class ForgotPassWordScreen {
  static Future<dynamic> ForgotPasswordBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      context: context,
      builder: ((context) => Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Forgot Password?',
                  style: GoogleFonts.poppins(
                      fontSize: 25, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Select any options given below to reset your password.',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff8D8D8D),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              const ForgetPasswordMailScreen()));
                    },
                    child: Container(
                      height: 70,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xffC5C5C5).withOpacity(0.10),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color(0xffEAEAEA).withOpacity(0.80),
                            width: 1.5),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.email_rounded,
                            size: 50,
                            color: Color(0xff2D2A2A),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'E-mail',
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Reset via E-mail verification.',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff8D8D8D),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const ForgetPasswordPhoneScreen()));
                  },
                  child: Container(
                    height: 70,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xffC5C5C5).withOpacity(0.10),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color(0xffEAEAEA).withOpacity(0.80),
                          width: 1.5),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.phone_android_rounded,
                          size: 50,
                          color: Color(0xff2D2A2A),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Phone Number',
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Reset via Phone verification.',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff8D8D8D),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
