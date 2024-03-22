import 'package:flutter/material.dart';
import 'package:quiz_demo/utils/extensions.dart';

class TextViewOptions extends StatelessWidget {
  const TextViewOptions(
      {Key? key, required this.name, required this.isDividerVisible})
      : super(key: key);
  final String name;
  final bool isDividerVisible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () {
          print('$name');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                name,
                textAlign: TextAlign.start,
                style: TextStyle(

                  fontFamily: 'OpenSens',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: HexColor.fromHex("#404040"),
                ),
              ),
            ),
            Visibility(
              visible: true,
              child: Divider(
                height: isDividerVisible ? 1 :0,
                color: HexColor.fromHex('#F5F5F5'),
                thickness: isDividerVisible ? 2 : 0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
