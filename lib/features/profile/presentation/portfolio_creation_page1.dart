import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/features/profile/presentation/portfolio_creation_page2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolioapp/widgets/chips_widgets.dart';

class PortfolioCreationPage1 extends StatefulWidget {
  static String name = '';
  static String phoneNum = '';
  static String jobName = '';
  static String fieldofinterest = '';
  static String projectlink = '';
  static String linkedinlink = '';

  static List<String> education = [];
  static List<String> experience = [];
  static List<String> selectedchiplabel1 = [];

  const PortfolioCreationPage1({super.key});

  @override
  State<PortfolioCreationPage1> createState() => _PortfolioCreationPage1State();
}

class _PortfolioCreationPage1State extends State<PortfolioCreationPage1> {
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding:
                const EdgeInsets.only(top: 45, bottom: 30, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Color(0xffFFFFFF),
                        foregroundImage: AssetImage('assets/images/Avatar.png'),
                      ),
                      Positioned(
                        right: 5,
                        bottom: 5,
                        child: Icon(
                          size: 30,
                          Icons.add_circle_rounded,
                          color: Color(0xff2D2A2A),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, top: 26.0),
                  child: Text(
                    'Welcome to portFolio.',
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 26.0),
                  child: Text(
                    'Create your portfolio and apply for internships according to your skills',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: const Color(0xff8D8D8D),
                        fontWeight: FontWeight.w300),
                  ),
                ),
                TextFormField(
                  onChanged: (value) {
                    PortfolioCreationPage1.name = value;
                  },
                  // controller: nameController,
                  textCapitalization: TextCapitalization.words,
                  cursorColor: const Color(0xff666666).withOpacity(0.60),
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff666666).withOpacity(0.60)),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Full name',
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
                const SizedBox(height: 15.0),
                TextFormField(
                  onChanged: (value) {
                    PortfolioCreationPage1.phoneNum = value;
                  },
                  textCapitalization: TextCapitalization.words,
                  cursorColor: const Color(0xff666666).withOpacity(0.60),
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff666666).withOpacity(0.60)),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Phone Number',
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
                const SizedBox(height: 15.0),
                TextFormField(
                  onChanged: (value) {
                    PortfolioCreationPage1.jobName = value;
                  },
                  textCapitalization: TextCapitalization.words,
                  cursorColor: const Color(0xff666666).withOpacity(0.60),
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff666666).withOpacity(0.60)),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Job Name',
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
                Padding(
                  padding: const EdgeInsets.only(top: 34.0, bottom: 12.0),
                  child: Text(
                    'Select Skill',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: const Color(0xff8D8D8D),
                        fontWeight: FontWeight.w300),
                  ),
                ),
                const ChipsCreationWidget(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Container(
          width: 55,
          height: 55,
          decoration:
              BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20)),
          child: FloatingActionButton(
            backgroundColor: const Color(0xff4C67ED),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PortfolioCreationPage2()));
            },
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.arrow_forward_rounded,
              size: 32,
            ),
          ),
        ),
      ),
    );
  }
}
