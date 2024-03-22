import 'package:flutter/material.dart';
import 'package:quiz_demo/utils/extensions.dart';

class SearchEditText extends StatelessWidget {

  const SearchEditText({Key? key, required this.hintText,required this.textController, required this.getString}) : super(key: key);
  final String hintText;

  final TextEditingController textController;
  final Function(String value) getString;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      keyboardType: TextInputType.text,
      onChanged: (value){
          getString(value);
      },
      autofocus: false,
      style: TextStyle(
          color: HexColor.fromHex('#000000'),
          fontFamily: 'OpenSens',
          fontWeight: FontWeight.w500),
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 14.0,
              color: HexColor.fromHex('#A1A1A1'),
              fontFamily: 'OpenSens',
              fontWeight: FontWeight.w500),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Image.asset("assets/images/search_ic.png"),
          contentPadding: const EdgeInsets.all(8),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: HexColor.fromHex("#FFFFFF")),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: HexColor.fromHex("#FFFFFF")),
            borderRadius: BorderRadius.circular(8.0),
          )),
    );
  }
}
