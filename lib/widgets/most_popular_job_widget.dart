import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MostPopularJobWidget extends StatefulWidget {
  const MostPopularJobWidget({super.key});

  @override
  State<MostPopularJobWidget> createState() => _MostPopularJobWidgetState();
}

class _MostPopularJobWidgetState extends State<MostPopularJobWidget> {
  final jobDomains = [
    'Mobile App',
    'UI/UX',
    'Web Development',
    'AI',
    'CyberSecurity',
    'Blockchain'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 40, left: 35, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Domains',
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
          height: 50,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 35),
            scrollDirection: Axis.horizontal,
            itemCount: jobDomains.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 25, bottom: 12, top: 5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      jobDomains.elementAt(index),
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
