import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/widgets/bottom_navbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 52),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: CircleAvatar(
                        radius: 50,
                        foregroundImage: AssetImage('assets/images/Avatar.png'),
                        backgroundColor: Color(0xffFFFFFF),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Full Name',
                            style: GoogleFonts.poppins(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Row(
                          children: [
                            TextButton.icon(
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<
                                    EdgeInsetsGeometry>(
                                  EdgeInsets.zero,
                                ),
                              ),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Color(0xff4C67ED),
                                size: 12,
                              ),
                              label: Text(
                                'LinkedIn',
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: const Color(0xff4C67ED)),
                              ),
                            ),
                            TextButton.icon(
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<
                                    EdgeInsetsGeometry>(
                                  EdgeInsets.zero,
                                ),
                              ),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Color(0xff4C67ED),
                                size: 12,
                              ),
                              label: Text(
                                'Website',
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: const Color(0xff4C67ED)),
                              ),
                            ),
                            TextButton.icon(
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<
                                    EdgeInsetsGeometry>(
                                  EdgeInsets.zero,
                                ),
                              ),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Color(0xff4C67ED),
                                size: 12,
                              ),
                              label: Text(
                                'Github',
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: const Color(0xff4C67ED)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 5),
                child: Text(
                  'Software Engineer',
                  style: GoogleFonts.poppins(
                      fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                'Self taught Software Engineer Self taught Software Engineer Self taught Software Engineer ',
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff8D8D8D)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 25),
                child: Wrap(
                  children: [
                    ActionChip(
                      label: Text(
                        'Skill 1',
                        style: GoogleFonts.poppins(
                          color: const Color(0xff515151).withOpacity(0.65),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      onPressed: () {},
                      backgroundColor: const Color(0xffEEEEEE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      side: BorderSide(
                          color: const Color(0xffEDEBEC).withOpacity(0.17),
                          width: 0.9),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ActionChip(
                        label: Text(
                          'Skill 2',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff515151).withOpacity(0.65),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        onPressed: () {},
                        backgroundColor: const Color(0xffEEEEEE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        side: BorderSide(
                            color: const Color(0xffEDEBEC).withOpacity(0.17),
                            width: 0.9),
                      ),
                    ),
                    ActionChip(
                      label: Text(
                        'Skill 3',
                        style: GoogleFonts.poppins(
                          color: const Color(0xff515151).withOpacity(0.65),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      onPressed: () {},
                      backgroundColor: const Color(0xffEEEEEE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      side: BorderSide(
                          color: const Color(0xffEDEBEC).withOpacity(0.17),
                          width: 0.9),
                    ),
                  ],
                ),
              ),
              TabBar(
                unselectedLabelColor: const Color(0xffC7C7C7),
                labelColor: const Color(0xff333333),
                indicatorColor: Colors.transparent,
                labelPadding: const EdgeInsets.symmetric(horizontal: 5),
                unselectedLabelStyle: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w400),
                labelStyle: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w400),
                tabs: const [
                  Tab(
                    text: 'Experience',
                  ),
                  Tab(
                    text: 'Projects',
                  ),
                  Tab(
                    text: 'Education',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    // Experience tab content
                    ListView.builder(
                      itemCount:
                          4, // Replace 'experienceList' with your actual list of experience data
                      itemBuilder: (context, index) {
                        // final experience = experienceList[index];
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 23, left: 30, right: 30),
                          child: Row(
                            children: [
                              const Icon(Icons.work),
                              Text('Experience$index'),
                            ],
                          ),
                        );
                      },
                    ),
                    // Projects tab content
                    ListView.builder(
                      itemCount:
                          4, // Replace 'projectList' with your actual list of project data
                      itemBuilder: (context, index) {
                        // final project = projectList[index];
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 23, left: 30, right: 30),
                          child: Row(
                            children: [
                              const Icon(Icons.code),
                              Text('Project$index'),
                            ],
                          ),
                        );
                      },
                    ),
                    // Education tab content
                    ListView.builder(
                      itemCount:
                          4, // Replace 'educationList' with your actual list of education data
                      itemBuilder: (context, index) {
                        // final education = educationList[index];
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 23, left: 30, right: 30),
                          child: Row(
                            children: [
                              const Icon(Icons.school),
                              Text('Education$index'),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: BottomNavigationBarExample(),
        ),
      ),
    );
  }
}
