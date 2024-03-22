import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextViewItem extends StatelessWidget {
  const TextViewItem({super.key,required this.value});
  final String value;

  @override
  Widget build(BuildContext context) {
    return Text(value,style: GoogleFonts.lato(
        textStyle: const TextStyle(
          fontSize: 14,
          color: Colors.white,
        )
    ));
  }
}
