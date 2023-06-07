import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/features/jobs/data/job_repository.dart';
import 'package:portfolioapp/features/jobs/presentation/applied_success.dart';

class ShowAboutTheJob extends StatefulWidget {
  const ShowAboutTheJob(
      {super.key, required this.jobID, required this.imageID});

  final String jobID;
  final String imageID;

  @override
  State<ShowAboutTheJob> createState() => _ShowAboutTheJobState();
}

class _ShowAboutTheJobState extends State<ShowAboutTheJob> {
  final jobType = [
    'Internship',
    'Internship',
    'Internship',
    'Internship',
  ];

  late Future<Map<String, dynamic>?> jobDataFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    jobDataFuture = getJobData();
  }

  Future<Map<String, dynamic>?> getJobData() async {
    final jobRepo = JobRepository();
    return jobRepo.getJob(widget.jobID);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder<Map<String, dynamic>?>(
        future: jobDataFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // While waiting for data, show a loading indicator
            return const Center(child: SizedBox());
          } else if (snapshot.hasError) {
            // If an error occurred while fetching data, display an error message
            return const Center(child: Text('Error loading job data'));
          } else {
            final jobData = snapshot.data;

            if (jobData == null) {
              // If no job data is available, display a message
              return const Center(child: Text('No job data available'));
            }

            // Build the UI using the jobData
            return ListView(
              padding: const EdgeInsets.only(bottom: 50, top: 50),
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          icon: const Icon(
                            Icons.chevron_left_rounded,
                            size: 30,
                            color: Color(0xff333333),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 11),
                            child: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.white,
                                child: Image.network(jobData['image'])),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            jobData['title'],
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff333333),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4, bottom: 18),
                            child: Text(
                              jobData['company'],
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xffBDBDBD),
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
                                'Description',
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
                              jobData['description'],
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: jobData['responsibilities'] != null
                                ? List<Widget>.generate(
                                    jobData['responsibilities'].length,
                                    (index) => Text(
                                      jobData['responsibilities'][index] ?? '',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  )
                                : [
                                    Text(
                                      'No responsibilities found.',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 28, bottom: 11),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Requirements',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: jobData['requirements'] != null
                                ? List<Widget>.generate(
                                    jobData['requirements'].length,
                                    (index) => Text(
                                      jobData['requirements'][index] ?? '',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  )
                                : [
                                    Text(
                                      'No requirements found.',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 28, bottom: 11),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Salary',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              jobData['salary'].toString(),
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
            );
          }
        },
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
                return SingleChildScrollView(
                  child: Padding(
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
                          'Job Title',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff333333),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 41),
                          child: Text(
                            'Company Name',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffBDBDBD),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Resume added from your profile   ',
                                style: GoogleFonts.poppins(fontSize: 15),
                              ),
                              const Icon(
                                Icons.check_circle,
                                color: Color(0xff3BAE31),
                              )
                            ],
                          ),
                        ),
                        Text(
                          'or',
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
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
                                color:
                                    const Color(0xffEAEAEA).withOpacity(0.80),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 5),
                                    child: Icon(
                                      Icons.upload_file_rounded,
                                      color: Color(0xff666666),
                                    ),
                                  ),
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
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10, top: 10),
                          child: SizedBox(
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
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const AppliedSuccessPage()));
                              },
                              child: Text(
                                'Apply Now',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
