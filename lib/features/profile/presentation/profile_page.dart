import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/features/authentication/presentation/welcome_screen.dart';
import 'package:portfolioapp/features/profile/data/profile_repository.dart';
import 'package:portfolioapp/features/profile/presentation/portfolio_creation_page2.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key, required this.userID}) : super(key: key);

  final String userID;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late Future<Map<String, dynamic>?> profileDataFuture;

  @override
  void initState() {
    super.initState();
    profileDataFuture = getProfileData();
  }

  Future<Map<String, dynamic>?> getProfileData() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      final profileRepo = ProfileRepository();
      return profileRepo.getProfile(currentUser.uid);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: FutureBuilder<Map<String, dynamic>?>(
          future: profileDataFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              final profileData = snapshot.data;
              if (profileData == null) {
                return const Center(
                  child: Text('No profile data available'),
                );
              }

              return Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 24, right: 24),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(Icons.arrow_back)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                                onPressed: () {
                                  FirebaseAuth.instance.signOut();
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const WelcomScreen(),
                                  ));
                                },
                                icon: const Icon(Icons.logout)),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: CircleAvatar(
                              radius: 50,
                              foregroundImage:
                                  AssetImage('assets/images/Avatar.png'),
                              backgroundColor: Color(0xffFFFFFF),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  profileData['name'] ?? '',
                                  style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500),
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
                                    onPressed: () async {
                                      final url =
                                          Uri.parse(profileData['linkedin']);
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url);
                                        print('clicked');
                                      }
                                    },
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
                        profileData['jobname'] ?? '',
                        style: GoogleFonts.poppins(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      'Self taught Software Engineer',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xff8D8D8D)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25, bottom: 25),
                      child: Wrap(
                        children: List<Widget>.generate(
                            profileData['skill'].length, (index) {
                          final skill = profileData['skill'][index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: ActionChip(
                              label: Text(
                                skill,
                                style: GoogleFonts.poppins(
                                  color:
                                      const Color(0xff515151).withOpacity(0.65),
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
                                color:
                                    const Color(0xffEDEBEC).withOpacity(0.17),
                                width: 0.9,
                              ),
                            ),
                          );
                        }),
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
                          // Experience tab content
                          ListView.builder(
                            itemCount: profileData['experience'].length,
                            itemBuilder: (context, index) {
                              final experience =
                                  profileData['experience'][index];
                              return ListTile(
                                leading: const Icon(Icons.work),
                                title: Text(
                                  experience,
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              );
                            },
                          ),

                          // Projects tab content
                          ListView.builder(
                            itemCount: profileData['projects'].length,
                            itemBuilder: (context, index) {
                              final project = profileData['projects'][index];
                              return ListTile(
                                leading: const Icon(Icons.folder),
                                title: Text(
                                  project,
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              );
                            },
                          ),

                          // Education tab content
                          ListView.builder(
                            itemCount: profileData['education'].length,
                            itemBuilder: (context, index) {
                              final education = profileData['education'][index];
                              return ListTile(
                                leading: const Icon(Icons.school),
                                title: Text(
                                  education,
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
