import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/features/jobs/presentation/explore_page.dart';
import 'package:portfolioapp/features/jobs/presentation/job_page.dart';

class JobsForYouContainerWidget extends StatefulWidget {
  const JobsForYouContainerWidget({super.key});

  @override
  State<JobsForYouContainerWidget> createState() =>
      _JobsForYouContainerWidgetState();
}

class _JobsForYouContainerWidgetState extends State<JobsForYouContainerWidget> {
  final yourJobNames = [
    'UI/UX Designer',
    'Video Editor',
    'Backend Developer',
    'Backend Developer',
    'Flutter Developer',
  ];

  final placeNames = [
    'Pune',
    'Banglore',
    'Mumbai',
    'Delhi',
    'Banglore',
  ];

  final jobType = [
    'Internship',
    'Internship',
    'Internship',
    'Internship',
    'Internship',
  ];

  final jobRemoteOrOnfield = [
    'On-site',
    'Remote',
    'Hybrid',
    'Remote',
    'On-site',
    'Hybrid'
  ];

  final cashPerMonth = [
    '₹10000',
    '₹15000',
    '₹12000',
    '₹1800',
    '₹10000',
    '₹16000'
  ];

  final jobID = [
    '6VLg89X9NAIP4Dschp1k',
    'ER5acxHizSbkJNdn1Rzh',
    'MHSLlr7DNegOf5hpUESb',
    'XxbBD0rVDmngsUt7ARjM',
    'zGGGbd3dsCmCxzvry04K'
  ];

  final imageID = [
    'https://internshala.com/cached_uploads/logo%2F64620cc950e9b1684147401.png',
    'https://internshala.com/cached_uploads/logo%2F5e2fdd55c1be61580195157.jpg',
    'https://internshala.com/cached_uploads/logo%2F646f1f7a34aea1685004154.png',
    'https://internshala.com/cached_uploads/logo%2F5e36e47ef04611580655742.png',
    'https://internshala.com/cached_uploads/logo%2F646c9ce2ba1191684839650.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 35, right: 25, top: 20, bottom: 20),
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
            ],
          ),
        ),
        SizedBox(
          height: 130,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 27),
            scrollDirection: Axis.horizontal,
            itemCount: jobID.length,
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
                          builder: (context) => ShowAboutTheJob(
                                jobID: jobID[index],
                                imageID: imageID[index],
                              )));
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
                              CircleAvatar(
                                radius: 16,
                                backgroundColor: Colors.white,
                                child: Image.network(imageID[index]),
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
                                      const EdgeInsets.only(left: 8, right: 40),
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
