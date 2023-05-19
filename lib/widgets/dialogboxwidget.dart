import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/screens/addskillagain.dart';

class AddLinkDialogBox extends StatefulWidget {
  const AddLinkDialogBox({super.key});

  @override
  State<AddLinkDialogBox> createState() => _AddLinkDialogBoxState();
}

class _AddLinkDialogBoxState extends State<AddLinkDialogBox> {
  void _addLink(String Link) {
    setState(() {});
    // You can perform any additional operations with the entered skill here
  }

  void _showAddSkillDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newLink = '';
        return AlertDialog(
          backgroundColor: const Color(0xff0E101B),
          title: Text(
            'Add Link',
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
                  newLink = value;
                },
                decoration: InputDecoration(
                  hintText: 'Enter Link',
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
                    color: Color(0xff4C67ED),
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
                    color: Color(0xff4C67ED),
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              onPressed: () {
                _addLink(newLink);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton.icon(
            onPressed: _showAddSkillDialog,
            icon: const Icon(Icons.add, color: Color(0xff4C67ED)),
            label: Text(
              'LinkedIn',
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: const Color(0xff4C67ED)),
            )),
        TextButton.icon(
            onPressed: _showAddSkillDialog,
            icon: const Icon(Icons.add, color: Color(0xff4C67ED)),
            label: Text(
              'Website',
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: const Color(0xff4C67ED)),
            )),
        TextButton.icon(
            onPressed: _showAddSkillDialog,
            icon: const Icon(Icons.add, color: Color(0xff4C67ED)),
            label: Text(
              'Github',
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: const Color(0xff4C67ED)),
            ))
      ],
    );
  }
}
