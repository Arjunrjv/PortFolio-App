import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobsForYouContainerWidget extends StatefulWidget {
  const JobsForYouContainerWidget({super.key});

  @override
  State<JobsForYouContainerWidget> createState() =>
      _JobsForYouContainerWidgetState();
}

class _JobsForYouContainerWidgetState extends State<JobsForYouContainerWidget> {
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
            itemCount: 6,
            itemBuilder: (context, index) {
              final isFirstItem = index == 0;
              final containerColor =
                  isFirstItem ? const Color(0xff2F80ED) : Colors.white;
              final borderRadius = BorderRadius.circular(20);
              final strokeWidth = isFirstItem ? 0.0 : 1.0;
              final titleTextColor =
                  isFirstItem ? Colors.white : const Color(0xff333333);
              final subTitleTextColor =
                  isFirstItem ? Colors.white : const Color(0xffBDBDBD);
              final trailIconColor =
                  isFirstItem ? Colors.white : const Color(0xff333333);

              final buttonColor =
                  isFirstItem ? Color(0xff3389FD) : Color(0xffF5F5F7);

              final buttonTextColor =
                  isFirstItem ? Colors.white : Color(0xffBDBDBD);

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
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 15, right: 10, top: 25),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xffF5F5F7), width: strokeWidth),
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
                                    'Software Engineer',
                                    style: GoogleFonts.poppins(
                                      fontSize: 11,
                                      color: titleTextColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Banglore, India',
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
                                width: 45,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: buttonColor,
                                      padding: const EdgeInsets.all(0),
                                      elevation: 0),
                                  child: Text(
                                    'Full time',
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
                                    const EdgeInsets.only(left: 8, right: 51),
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
                                      'Remote',
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
                                      text: '₹1200',
                                      style: GoogleFonts.poppins(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    TextSpan(
                                      text: '/month',
                                      style: GoogleFonts.poppins(
                                          fontSize: 7,
                                          fontWeight: FontWeight.w400),
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
              );
            },
          ),
        ),
      ],
    );
  }
}
