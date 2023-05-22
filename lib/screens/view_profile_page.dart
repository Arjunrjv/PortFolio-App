import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/widgets/jobs_foryou_contaoner_widget.dart';
import 'package:portfolioapp/widgets/list_tile_column_widget.dart';
import 'package:portfolioapp/widgets/most_popular_job_widget.dart';
import 'package:portfolioapp/widgets/search_job_textfield.dart';

class ViewProfilePage extends StatefulWidget {
  const ViewProfilePage({super.key});

  @override
  State<ViewProfilePage> createState() => _ViewProfilePageState();
}

class _ViewProfilePageState extends State<ViewProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: ListView(
        children: [
          Container(
            padding:
                const EdgeInsets.only(right: 21, bottom: 35, left: 24, top: 71),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello User👋',
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Lets’s find your dream job ",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
                const CircleAvatar(
                  child: FlutterLogo(),
                ),
              ],
            ),
          ),
          const SearchJobTextFieldWidget(),
          const MostPopularJobWidget(),
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                TrendingJobsListTile(),
                TrendingJobsListTile(),
                TrendingJobsListTile(),
                TrendingJobsListTile(),
                TrendingJobsListTile(),
                TrendingJobsListTile(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
