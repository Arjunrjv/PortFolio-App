import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchJobTextFieldWidget extends StatefulWidget {
  const SearchJobTextFieldWidget({super.key});

  @override
  State<SearchJobTextFieldWidget> createState() =>
      _SearchJobTextFieldWidgetState();
}

class _SearchJobTextFieldWidgetState extends State<SearchJobTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40, bottom: 35, left: 30),
      child: TextFormField(
        textCapitalization: TextCapitalization.words,
        cursorColor: Colors.black,
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: const Color(0xff000000),
        ),
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            size: 24,
            color: Color(0xff000000),
          ),
          suffixIcon: const Icon(
            Icons.tune,
            size: 24,
            color: Color(0xff000000),
          ),
          isDense: true,
          hintText: 'Search Jobs/Company',
          hintStyle: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: const Color(0xffBDBDBD),
          ),
          filled: true,
          fillColor: const Color(0xffFFFFFF),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: Color(0xffF5F5F7),
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: Color(0xffF5F5F7),
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
