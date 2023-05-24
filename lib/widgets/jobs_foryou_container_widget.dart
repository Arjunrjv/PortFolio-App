import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/screens/job_page.dart';

class JobsForYouContainerWidget extends StatefulWidget {
  const JobsForYouContainerWidget({super.key});

  @override
  State<JobsForYouContainerWidget> createState() =>
      _JobsForYouContainerWidgetState();
}

class _JobsForYouContainerWidgetState extends State<JobsForYouContainerWidget> {
  final yourJobNames = [
    'Software Engineer',
    'Flutter Developer',
    'Full Stack Developer',
    'Software Tester',
    'Data Analyst',
    'Cloud Engineer'
  ];

  final placeNames = [
    'Banglore',
    'Delhi',
    'Kochi',
    'Mumbai',
    'Banglore',
    'Kochi'
  ];

  final jobType = [
    'Full-Time',
    'Internship',
    'Part-Time',
    'Temporary',
    'Full-Time',
    'Internship'
  ];

  final jobRemoteOrOnfield = [
    'On-site',
    'Remote',
    'Hybrid',
    'Remote',
    'On-site',
    'Hybrid'
  ];

  final cashPerMonth = ['₹1200', '₹5000', '₹8000', '₹1800', '₹2000', '₹1000'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 35, right: 40, top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'For you',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Explore',
                style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff2F80ED)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 130,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 27),
            scrollDirection: Axis.horizontal,
            itemCount: yourJobNames.length,
            itemBuilder: (context, index) {
              final isFirstItem = index == 0;
              final containerColor =
                  isFirstItem ? const Color(0xff4C67ED) : Colors.white;
              final borderRadius = BorderRadius.circular(10);
              final titleTextColor =
                  isFirstItem ? Colors.white : const Color(0xff333333);
              final subTitleTextColor =
                  isFirstItem ? Colors.white : const Color(0xffBDBDBD);
              final trailIconColor =
                  isFirstItem ? Colors.white : const Color(0xff333333);

              final buttonColor = isFirstItem
                  ? const Color(0xff3389FD)
                  : const Color(0xffF5F5F7);

              final buttonTextColor =
                  isFirstItem ? Colors.white : const Color(0xffBDBDBD);

              final boxShadow = [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: const Offset(0, 4),
                ),
              ];

              return Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 12, top: 5),
                child: SizedBox(
                  height: 120,
                  width: 230,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ShowAboutTheJob()));
                    },
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 15, right: 10, top: 25),
                      decoration: BoxDecoration(
                        color: containerColor,
                        borderRadius: borderRadius,
                        boxShadow: isFirstItem ? [] : boxShadow,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 16,
                                backgroundColor: Colors.white,
                                child: FlutterLogo(size: 20),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      yourJobNames.elementAt(index),
                                      style: GoogleFonts.poppins(
                                        fontSize: 11,
                                        color: titleTextColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      placeNames.elementAt(index),
                                      style: GoogleFonts.poppins(
                                        fontSize: 8,
                                        color: subTitleTextColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.bookmark_border_rounded,
                                size: 20,
                                color: trailIconColor,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 18,
                                  width: 50,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: buttonColor,
                                        padding: const EdgeInsets.all(0),
                                        elevation: 0),
                                    child: Text(
                                      jobType.elementAt(index),
                                      style: GoogleFonts.poppins(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                        color: buttonTextColor,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 46),
                                  child: SizedBox(
                                    height: 18,
                                    width: 45,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: buttonColor,
                                          padding: const EdgeInsets.all(0),
                                          elevation: 0),
                                      child: Text(
                                        jobRemoteOrOnfield.elementAt(index),
                                        style: GoogleFonts.poppins(
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                          color: buttonTextColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: cashPerMonth.elementAt(index),
                                        style: GoogleFonts.poppins(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w500,
                                            color: buttonTextColor),
                                      ),
                                      TextSpan(
                                        text: '/month',
                                        style: GoogleFonts.poppins(
                                            fontSize: 7,
                                            fontWeight: FontWeight.w400,
                                            color: buttonTextColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
