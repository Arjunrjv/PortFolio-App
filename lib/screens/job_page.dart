import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowAboutTheJob extends StatefulWidget {
  const ShowAboutTheJob({super.key});

  @override
  State<ShowAboutTheJob> createState() => _ShowAboutTheJobState();
}

class _ShowAboutTheJobState extends State<ShowAboutTheJob> {
  final jobType = [
    'Full-Time',
    'Internship',
    'Part-Time',
    'Temporary',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.chevron_left_rounded,
                  size: 30,
                  color: Color(0xff333333),
                ),
                Icon(
                  Icons.bookmark_border_rounded,
                  color: Color(0xffBDBDBD),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: const Color(0xffEFEFEF).withOpacity(0.05),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(0, -4))
              ],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 26, bottom: 11),
                    child: CircleAvatar(
                      child: FlutterLogo(),
                    ),
                  ),
                  Text(
                    'Software Engineer',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff333333),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 18),
                    child: Text(
                      'Marketfeed',
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffBDBDBD),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: const Color(0xff2F80ED),
                        borderRadius: BorderRadiusDirectional.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 80,
                              height: 25,
                              child: ActionChip(
                                label: Text(jobType.elementAt(0)),
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                backgroundColor: const Color(0xffF5F5F5),
                                side: const BorderSide(
                                    color: Color(0xff333333), width: 0),
                                labelStyle: const TextStyle(fontSize: 10),
                              ),
                            ),
                            SizedBox(
                              width: 80,
                              height: 25,
                              child: ActionChip(
                                label: Text(jobType.elementAt(1)),
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                backgroundColor: const Color(0xffF5F5F5),
                                side: const BorderSide(
                                    color: Color(0xff333333), width: 0),
                                labelStyle: const TextStyle(fontSize: 10),
                              ),
                            ),
                            SizedBox(
                              width: 80,
                              height: 25,
                              child: ActionChip(
                                label: Text(jobType.elementAt(2)),
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                backgroundColor: const Color(0xffF5F5F5),
                                side: const BorderSide(
                                    color: Color(0xff333333), width: 0),
                                labelStyle: const TextStyle(fontSize: 10),
                              ),
                            ),
                            SizedBox(
                              width: 80,
                              height: 25,
                              child: ActionChip(
                                label: Text(jobType.elementAt(3)),
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                backgroundColor: const Color(0xffF5F5F5),
                                side: const BorderSide(
                                    color: Color(0xff333333), width: 0),
                                labelStyle: const TextStyle(fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 28, bottom: 11),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Job Description',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'We are seeking a talented and motivated Software Engineer to join our dynamic development team.\nAs a Software Engineer, you will be responsible for\ndeveloping high-quality software solutions and contributing to all phases of the software development lifecycle. You will collaborate with cross-functional teams to design and implement software features, solve complex technical problems, and deliver innovative solutions.',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 28, bottom: 11),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Responsibilities',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Develop, test, and deploy software applications and systems Collaborate with product managers and stakeholders to understand requirements and translate them into technical specifications Design and implement software features, modules, and components Write clean, maintainable, and efficient code following best practices and coding standards Conduct code reviews to ensure code quality and adherence to established guidelines Troubleshoot and debug software defects and performance issues Collaborate with cross-functional teams, including designers and QA engineers, to deliver high-quality software products Stay updated with the latest industry trends and technologies, and evaluate their potential impact on the software development process',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 28, bottom: 11),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Qualifications',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Bachelor's or Master's degree in Computer Science, Software Engineering, or a related field Solid understanding of software development principles, algorithms, and data structures Proficiency in one or more programming languages such as Java, C++, Python, or JavaScript Experience with software development frameworks and tools Strong problem-solving and analytical skills Excellent communication and teamwork abilities Attention to detail and commitment to delivering high-quality software products Ability to adapt to changing project requirements and work in a fast-paced environment",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: 250,
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              context: context,
              builder: (context) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 37, bottom: 25),
                        child: SizedBox(
                          width: 100,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 30,
                                child: CircleAvatar(
                                  backgroundColor: Color(0xff3BAE31),
                                  radius: 30,
                                  child: FlutterLogo(
                                    size: 30,
                                  ),
                                ),
                              ),
                              Positioned(
                                child: CircleAvatar(
                                  backgroundColor: Color(0xff333333),
                                  radius: 30,
                                  child: FlutterLogo(
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        'Software Engineer',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff333333),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 41),
                        child: Text(
                          'Marketfeed',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffBDBDBD),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Resume added from your profile   '),
                            Icon(
                              Icons.check_circle,
                              color: Color(0xff3BAE31),
                            )
                          ],
                        ),
                      ),
                      const Text('or'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 40),
                        child: DottedBorder(
                          color: const Color(0xffEAEAEA),
                          strokeWidth: 1.5,
                          dashPattern: const [12, 12],
                          radius: const Radius.circular(10),
                          borderType: BorderType.RRect,
                          child: Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: 65,
                            decoration: BoxDecoration(
                              color: const Color(0xffEAEAEA).withOpacity(0.80),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.upload_file_rounded,
                                  color: Color(0xff666666),
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  'Upload New Resume',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.0,
                                    color: const Color(0xff666666)
                                        .withOpacity(0.60),
                                  ),
                                ),
                              ],
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
                          onPressed: () {},
                          child: Text(
                            'Apply Now',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 15.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          backgroundColor: const Color(0xff4C67ED),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            'One Click Apply',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, fontSize: 19.0),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
