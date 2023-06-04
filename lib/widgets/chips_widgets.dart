import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/widgets/add_new_widget.dart';
import '../features/profile/presentation/portfolio_creation_page1.dart';

class ChipsCreationWidget extends StatefulWidget {
  const ChipsCreationWidget({super.key});

  @override
  State<ChipsCreationWidget> createState() => _ChipsCreationWidgetState();
}

class _ChipsCreationWidgetState extends State<ChipsCreationWidget> {
  bool chipicon1 = false;
  bool chipicon2 = false;
  bool chipicon3 = false;
  bool chipicon4 = false;
  bool chipicon5 = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: ActionChip(
            avatar: Icon(chipicon1 ? Icons.check_box : Icons.check,
                color: const Color(0xff515151)),
            onPressed: () {
              setState(() {
                PortfolioCreationPage1.selectedchiplabel1.add('Flutter');
                chipicon1 = !chipicon1;
              });
            },
            label: Text(
              'Flutter',
              style: GoogleFonts.poppins(
                  color: const Color(0xff515151).withOpacity(0.65),
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            backgroundColor: const Color(0xffEEEEEE),
            side: BorderSide(
                color: const Color(0xffEDEBEC).withOpacity(0.17), width: 0.9),
          ),
        ),
        ActionChip(
          avatar: Icon(chipicon2 ? Icons.check_box : Icons.check,
              color: const Color(0xff515151)),
          onPressed: () {
            setState(() {
              PortfolioCreationPage1.selectedchiplabel1.add('JavaScript');
              chipicon2 = !chipicon2;
            });
          },
          label: Text(
            'JavaScript',
            style: GoogleFonts.poppins(
                color: const Color(0xff515151).withOpacity(0.65),
                fontWeight: FontWeight.w500,
                fontSize: 12),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          backgroundColor: const Color(0xffEEEEEE),
          side: BorderSide(
              color: const Color(0xffEDEBEC).withOpacity(0.17), width: 0.9),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ActionChip(
            avatar: Icon(chipicon3 ? Icons.check_box : Icons.check,
                color: const Color(0xff515151)),
            onPressed: () {
              setState(() {
                PortfolioCreationPage1.selectedchiplabel1.add('Python');
                chipicon3 = !chipicon3;
              });
            },
            label: Text(
              'Python',
              style: GoogleFonts.poppins(
                  color: const Color(0xff515151).withOpacity(0.65),
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            backgroundColor: const Color(0xffEEEEEE),
            side: BorderSide(
                color: const Color(0xffEDEBEC).withOpacity(0.17), width: 0.9),
          ),
        ),
        ActionChip(
          avatar: Icon(chipicon4 ? Icons.check_box : Icons.check,
              color: const Color(0xff515151)),
          onPressed: () {
            setState(() {
              PortfolioCreationPage1.selectedchiplabel1.add('Golang');
              chipicon4 = !chipicon4;
            });
          },
          label: Text(
            'Golang',
            style: GoogleFonts.poppins(
                color: const Color(0xff515151).withOpacity(0.65),
                fontWeight: FontWeight.w500,
                fontSize: 12),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          backgroundColor: const Color(0xffEEEEEE),
          side: BorderSide(
              color: const Color(0xffEDEBEC).withOpacity(0.17), width: 0.9),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ActionChip(
            avatar: Icon(chipicon5 ? Icons.check_box : Icons.check,
                color: const Color(0xff515151)),
            onPressed: () {
              setState(() {
                PortfolioCreationPage1.selectedchiplabel1.add('React');
                chipicon5 = !chipicon5;
              });
            },
            label: Text(
              'React',
              style: GoogleFonts.poppins(
                  color: const Color(0xff515151).withOpacity(0.65),
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            backgroundColor: const Color(0xffEEEEEE),
            side: BorderSide(
                color: const Color(0xffEDEBEC).withOpacity(0.17), width: 0.9),
          ),
        ),
        const MyWidget(),
      ],
    );
  }
}
