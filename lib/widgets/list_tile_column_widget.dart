import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingJobsListTile extends StatefulWidget {
  const TrendingJobsListTile({super.key});

  @override
  State<TrendingJobsListTile> createState() => _TrendingJobsListTileState();
}

class _TrendingJobsListTileState extends State<TrendingJobsListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      visualDensity: const VisualDensity(vertical: -3),
      leading: Transform.translate(
        offset: const Offset(0, 0),
        child: const Icon(
          Icons.account_circle,
          size: 36,
          color: Colors.black,
        ),
      ),
      title: Transform.translate(
        offset: const Offset(-15, -4),
        child: Text(
          'Senior Developer',
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      subtitle: Transform.translate(
        offset: const Offset(-15, -4),
        child: Text(
          'Remote, Marketfeed, Banglore',
          style: GoogleFonts.poppins(
            fontSize: 10,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      trailing: Transform.translate(
        offset: const Offset(0, 0),
        child: const Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
      ),
    );
  }
}
