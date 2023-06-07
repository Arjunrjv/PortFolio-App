import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/features/jobs/presentation/home_page.dart';
import 'portfolio_creation_page1.dart';

class PortfolioCreationPage2 extends StatefulWidget {
  const PortfolioCreationPage2({super.key});

  @override
  State<PortfolioCreationPage2> createState() => _PortfolioCreationPage2State();
}

class _PortfolioCreationPage2State extends State<PortfolioCreationPage2> {
  final _firestore = FirebaseFirestore.instance;

  late final TextEditingController _experiencecontroller1;
  late final TextEditingController _experiencecontroller2;
  late final TextEditingController _experiencecontroller3;

  late final TextEditingController _educationcontroller1;
  late final TextEditingController _educationcontroller2;
  late final TextEditingController _educationcontroller3;

  late String documentID;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _experiencecontroller1 = TextEditingController();
    _experiencecontroller2 = TextEditingController();
    _experiencecontroller3 = TextEditingController();

    _educationcontroller1 = TextEditingController();
    _educationcontroller2 = TextEditingController();
    _educationcontroller3 = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _experiencecontroller1.dispose();
    _experiencecontroller2.dispose();
    _experiencecontroller3.dispose();

    _educationcontroller1.dispose();
    _educationcontroller2.dispose();
    _educationcontroller3.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.only(top: 73, bottom: 30, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    foregroundImage: AssetImage('assets/images/Avatar.png'),
                    backgroundColor: Color(0xffFFFFFF),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          PortfolioCreationPage1.name,
                          style: GoogleFonts.poppins(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          PortfolioCreationPage1.jobName,
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              TextFormField(
                controller: _educationcontroller1,
                textCapitalization: TextCapitalization.sentences,
                cursorColor: const Color(0xff666666).withOpacity(0.60),
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xff666666).withOpacity(0.60)),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Education1',
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff666666).withOpacity(0.60)),
                  filled: true,
                  fillColor: const Color(0xffC5C5C5).withOpacity(0.10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color: const Color(0xffEAEAEA).withOpacity(0.80)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color: const Color(0xffEAEAEA).withOpacity(0.80)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              TextFormField(
                controller: _educationcontroller2,
                textCapitalization: TextCapitalization.sentences,
                cursorColor: const Color(0xff666666).withOpacity(0.60),
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xff666666).withOpacity(0.60)),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Education2',
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff666666).withOpacity(0.60)),
                  filled: true,
                  fillColor: const Color(0xffC5C5C5).withOpacity(0.10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color: const Color(0xffEAEAEA).withOpacity(0.80)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color: const Color(0xffEAEAEA).withOpacity(0.80)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              TextFormField(
                controller: _educationcontroller3,
                textCapitalization: TextCapitalization.sentences,
                cursorColor: const Color(0xff666666).withOpacity(0.60),
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xff666666).withOpacity(0.60)),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Education3',
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff666666).withOpacity(0.60)),
                  filled: true,
                  fillColor: const Color(0xffC5C5C5).withOpacity(0.10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color: const Color(0xffEAEAEA).withOpacity(0.80)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color: const Color(0xffEAEAEA).withOpacity(0.80)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              TextFormField(
                controller: _experiencecontroller1,
                textCapitalization: TextCapitalization.sentences,
                cursorColor: const Color(0xff666666).withOpacity(0.60),
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff666666).withOpacity(0.60)),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Experience1',
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xff666666).withOpacity(0.60)),
                  filled: true,
                  fillColor: const Color(0xffC5C5C5).withOpacity(0.10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color: const Color(0xffEAEAEA).withOpacity(0.80)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color: const Color(0xffEAEAEA).withOpacity(0.80)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              TextFormField(
                controller: _experiencecontroller2,
                textCapitalization: TextCapitalization.sentences,
                cursorColor: const Color(0xff666666).withOpacity(0.60),
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff666666).withOpacity(0.60)),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Experience2',
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xff666666).withOpacity(0.60)),
                  filled: true,
                  fillColor: const Color(0xffC5C5C5).withOpacity(0.10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color: const Color(0xffEAEAEA).withOpacity(0.80)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color: const Color(0xffEAEAEA).withOpacity(0.80)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              TextFormField(
                controller: _experiencecontroller3,
                textCapitalization: TextCapitalization.sentences,
                cursorColor: const Color(0xff666666).withOpacity(0.60),
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff666666).withOpacity(0.60)),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Experience3',
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xff666666).withOpacity(0.60)),
                  filled: true,
                  fillColor: const Color(0xffC5C5C5).withOpacity(0.10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color: const Color(0xffEAEAEA).withOpacity(0.80)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        color: const Color(0xffEAEAEA).withOpacity(0.80)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              TextFormField(
                onChanged: (value) {
                  PortfolioCreationPage1.fieldofinterest = value;
                },
                textCapitalization: TextCapitalization.words,
                cursorColor: const Color(0xff666666).withOpacity(0.60),
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff666666).withOpacity(0.60)),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Field of Interest',
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
                  PortfolioCreationPage1.projectlink = value;
                },
                cursorColor: const Color(0xff666666).withOpacity(0.60),
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff666666).withOpacity(0.60)),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Projects Link',
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
                  PortfolioCreationPage1.linkedinlink = value;
                },
                cursorColor: const Color(0xff666666).withOpacity(0.60),
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff666666).withOpacity(0.60)),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'LinkedIn Link',
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
              const SizedBox(height: 50.0),
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
                    PortfolioCreationPage1.experience
                      ..add(_experiencecontroller1.text)
                      ..add(_experiencecontroller2.text)
                      ..add(_experiencecontroller3.text);
                    PortfolioCreationPage1.education
                      ..add(_educationcontroller1.text)
                      ..add(_educationcontroller2.text)
                      ..add(_educationcontroller3.text);
                    final currentUser = FirebaseAuth.instance.currentUser;
                    if (currentUser != null) {
                      final userID = currentUser.uid;
                      _firestore.collection('users').doc(userID).set(
                        {
                          'name': PortfolioCreationPage1.name,
                          'phone': PortfolioCreationPage1.phoneNum,
                          'jobname': PortfolioCreationPage1.jobName,
                          'education': PortfolioCreationPage1.education,
                          'experience': PortfolioCreationPage1.experience,
                          'fieldofinterest':
                              PortfolioCreationPage1.fieldofinterest,
                          'skill': PortfolioCreationPage1.selectedchiplabel1,
                          'projectlink': PortfolioCreationPage1.projectlink,
                          'linkedin': PortfolioCreationPage1.linkedinlink,
                          'projects': PortfolioCreationPage1.selectedchiplabel1,
                        },
                      );
                    }

                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  },
                  child: Text(
                    "Let's Go",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700, fontSize: 18.0),
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
