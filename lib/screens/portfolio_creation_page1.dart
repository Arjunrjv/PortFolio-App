import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/screens/portfolio_creation_page2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PortfolioCreationPage1 extends StatefulWidget {
  static String name = '';
  static String phoneNum = '';
  static String jobName = '';
  static String education = '';
  static String experience = '';
  static String fieldofinterest = '';

  const PortfolioCreationPage1({super.key});

  @override
  State<PortfolioCreationPage1> createState() => _PortfolioCreationPage1State();
}

class _PortfolioCreationPage1State extends State<PortfolioCreationPage1> {
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E101B),
      appBar: AppBar(
        backgroundColor: const Color(0xff0E101B),
        title: Text(
          'CREATE PROFILE',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 0, bottom: 30, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    foregroundImage: AssetImage('assets/images/Avatar.png'),
                  ),
                  Positioned(
                    right: 5,
                    bottom: 5,
                    child: Icon(
                      size: 30,
                      Icons.add_circle_rounded,
                      color: Color(0xff4C67ED),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top: 28.0),
              child: Text(
                'Welcome to portFolio',
                style: GoogleFonts.poppins(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Create your portfolio and apply for jobs according to your skills',
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: const Color(0xff8D8D8D),
                    fontWeight: FontWeight.w200),
              ),
            ),
            TextFormField(
              onChanged: (value) {
                PortfolioCreationPage1.name = value;
              },
              textCapitalization: TextCapitalization.words,
              cursorColor: Colors.white,
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: const Color(0xffFFFFFF)),
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Full name',
                hintStyle: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xff666666)),
                filled: true,
                fillColor: const Color(0xff20222C),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: Color(0xff343434)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: Color(0xff343434)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            TextFormField(
              onChanged: (value) {
                PortfolioCreationPage1.phoneNum = value;
              },
              cursorColor: Colors.white,
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: const Color(0xffFFFFFF)),
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Phone Number',
                hintStyle: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xff666666)),
                filled: true,
                fillColor: const Color(0xff20222C),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: Color(0xff343434)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: Color(0xff343434)),
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
              cursorColor: Colors.white,
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: const Color(0xffFFFFFF)),
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Job name',
                hintStyle: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xff666666)),
                filled: true,
                fillColor: const Color(0xff20222C),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: Color(0xff343434)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: Color(0xff343434)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Text(
                'Select Skill',
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: const Color(0xff8D8D8D),
                    fontWeight: FontWeight.w200),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Chip(
                      label: Text(
                        'Java',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      backgroundColor: const Color(0xff20222C),
                      side:
                          const BorderSide(color: Color(0xffEDEBEC), width: 0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Chip(
                        label: Text(
                          'Python',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        backgroundColor: const Color(0xff20222C),
                        side: const BorderSide(
                            color: Color(0xffEDEBEC), width: 0),
                      ),
                    ),
                    Chip(
                      label: Text(
                        'Flutter',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      backgroundColor: const Color(0xff20222C),
                      side:
                          const BorderSide(color: Color(0xffEDEBEC), width: 0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Chip(
                        label: Text(
                          'JavaScript',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        backgroundColor: const Color(0xff20222C),
                        side: const BorderSide(
                            color: Color(0xffEDEBEC), width: 0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Chip(
                      label: Text(
                        'Golang',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      backgroundColor: const Color(0xff20222C),
                      side:
                          const BorderSide(color: Color(0xffEDEBEC), width: 0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Chip(
                        label: Text(
                          'React',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        backgroundColor: const Color(0xff20222C),
                        side: const BorderSide(
                            color: Color(0xffEDEBEC), width: 0),
                      ),
                    ),
                    Chip(
                      label: Text(
                        'Add New +',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      backgroundColor: const Color(0xff4C67ED),
                      side:
                          const BorderSide(color: Color(0xffEDEBEC), width: 0),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 60,
        height: 50,
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
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: const Icon(Icons.forward),
        ),
      ),
    );
  }
}
