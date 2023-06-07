import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/features/profile/presentation/portfolio_creation_page2.dart';
import 'package:portfolioapp/features/profile/presentation/profile_page.dart';
import 'package:portfolioapp/widgets/jobs_foryou_container_widget.dart';
import 'package:portfolioapp/widgets/list_tile_column_widget.dart';
import 'package:portfolioapp/widgets/search_job_textfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final jobID = [
    '6VLg89X9NAIP4Dschp1k',
    'ER5acxHizSbkJNdn1Rzh',
    'MHSLlr7DNegOf5hpUESb',
    'XxbBD0rVDmngsUt7ARjM',
    'zGGGbd3dsCmCxzvry04K'
  ];
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  right: 21, bottom: 35, left: 24, top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello 👋',
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Let's find your dream internship",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    child: const CircleAvatar(
                      child: FlutterLogo(),
                    ),
                    onTap: () async {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ProfilePage(
                            userID: '0YgzTJ3BPG550L4iQveR',
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SearchJobTextFieldWidget(),
            const JobsForYouContainerWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 35, bottom: 20, top: 20),
              child: Text(
                'Trending jobs',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 500,
              child: TrendingJobsListTile(),
            )
          ],
        ),
      ),
    );
  }
}
