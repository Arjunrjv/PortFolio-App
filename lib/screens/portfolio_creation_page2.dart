import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/screens/view_profile_page.dart';
import 'portfolio_creation_page1.dart';

class PortfolioCreationPage2 extends StatefulWidget {
  const PortfolioCreationPage2({super.key});

  @override
  State<PortfolioCreationPage2> createState() => _PortfolioCreationPage2State();
}

class _PortfolioCreationPage2State extends State<PortfolioCreationPage2> {
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E101B),
      appBar: AppBar(
        backgroundColor: const Color(0xff0E101B),
      ),
      body: Container(
          padding:
              const EdgeInsets.only(top: 30, bottom: 30, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    foregroundImage: AssetImage('assets/images/Avatar.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Full Name',
                          style: GoogleFonts.poppins(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          'Job Role',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              TextFormField(
                onChanged: (value) {
                  PortfolioCreationPage1.education = value;
                },
                textCapitalization: TextCapitalization.sentences,
                cursorColor: Colors.white,
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xffFFFFFF)),
                maxLines: 4,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Education',
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
                  PortfolioCreationPage1.experience = value;
                },
                textCapitalization: TextCapitalization.sentences,
                cursorColor: Colors.white,
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xffFFFFFF)),
                maxLines: 4,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Experience',
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
                  PortfolioCreationPage1.fieldofinterest = value;
                },
                textCapitalization: TextCapitalization.words,
                cursorColor: Colors.white,
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xffFFFFFF)),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Field of Interest',
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
                cursorColor: Colors.white,
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xffFFFFFF)),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Projects Link',
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
              const SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.add, color: Color(0xff4C67ED)),
                      label: Text(
                        'LinkedIn',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xff4C67ED)),
                      )),
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.add, color: Color(0xff4C67ED)),
                      label: Text(
                        'Website',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xff4C67ED)),
                      )),
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.add, color: Color(0xff4C67ED)),
                      label: Text(
                        'Github',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xff4C67ED)),
                      ))
                ],
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
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => const ViewProfilePage()));
                    // print(PortfolioCreationPage1.name);

                    _firestore.collection('portfolios').add(
                      {
                        'name': PortfolioCreationPage1.name,
                        'phone': PortfolioCreationPage1.phoneNum,
                        'jobname': PortfolioCreationPage1.jobName,
                        'education': PortfolioCreationPage1.education,
                        'experience': PortfolioCreationPage1.experience,
                        'fieldofinterest':
                            PortfolioCreationPage1.fieldofinterest
                      },
                    );
                  },
                  child: Text(
                    "Let's Go",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700, fontSize: 18.0),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
