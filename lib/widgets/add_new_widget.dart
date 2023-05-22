import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/screens/add_skill_again.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final List<String> _skills = [];

  void _addSkill(String skill) {
    setState(() {
      _skills.add(skill);
    });
    // You can perform any additional operations with the entered skill here
  }

  void _showAddSkillDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newSkill = '';
        return AlertDialog(
          backgroundColor: const Color(0xff0E101B),
          title: Text(
            'Add Skill',
            style: GoogleFonts.poppins(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                textCapitalization: TextCapitalization.words,
                cursorColor: Colors.white,
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xffFFFFFF)),
                onChanged: (value) {
                  newSkill = value;
                },
                decoration: InputDecoration(
                  hintText: 'Enter skill',
                  isDense: true,
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xff666666)),
                  filled: true,
                  fillColor: const Color(0xff20222C),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 2, color: Color(0xff343434)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 2, color: Color(0xff343434)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'Cancel',
                style: GoogleFonts.poppins(
                    color: const Color(0xff4C67ED),
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(
                'Add',
                style: GoogleFonts.poppins(
                    color: const Color(0xff4C67ED),
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              onPressed: () {
                _addSkill(newSkill);
                // Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AddSkillAgain()));
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ActionChip(
          label: const Text(
            'Add New +',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
          onPressed: _showAddSkillDialog,
          backgroundColor: const Color(0xff4C67ED),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          side: const BorderSide(color: Color(0xffEDEBEC), width: 0),
        ),
      ],
    );
  }
}
