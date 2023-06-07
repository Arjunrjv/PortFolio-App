import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/features/jobs/presentation/job_page.dart';

class TrendingJobsListTile extends StatefulWidget {
  const TrendingJobsListTile({super.key, var jobNames});

  @override
  State<TrendingJobsListTile> createState() => _TrendingJobsListTileState();
}

class _TrendingJobsListTileState extends State<TrendingJobsListTile> {
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

  final imageID = [
    'https://internshala.com/cached_uploads/logo%2F64620cc950e9b1684147401.png',
    'https://internshala.com/cached_uploads/logo%2F5e2fdd55c1be61580195157.jpg',
    'https://internshala.com/cached_uploads/logo%2F646f1f7a34aea1685004154.png',
    'https://internshala.com/cached_uploads/logo%2F5e36e47ef04611580655742.png',
    'https://internshala.com/cached_uploads/logo%2F646c9ce2ba1191684839650.jpg',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ShowAboutTheJob(
                        jobID: jobID[index],
                        imageID: imageID[index],
                      )));
            },
            dense: true,
            visualDensity: const VisualDensity(vertical: -3),
            leading: Transform.translate(
              offset: const Offset(-5, 0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Image.network(imageID[index]),
              ),
            ),
            title: Transform.translate(
              offset: const Offset(-15, -4),
              child: Text(
                yourJobNames[index],
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            subtitle: Transform.translate(
              offset: const Offset(-15, -4),
              child: Text(
                '${jobType[index]},${placeNames[index]}',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            trailing: Transform.translate(
              offset: const Offset(0, 0),
              child: IconButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => const PortfolioHome()));
                },
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              ),
            ),
          );
        },
        itemCount: jobID.length,
      ),
    );
  }
}
