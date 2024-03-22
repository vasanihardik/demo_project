import 'package:flutter/material.dart';
import 'package:quiz_demo/utils/extensions.dart';
import 'package:quiz_demo/utils/string_const.dart';

class SquareViewPosterItem extends StatelessWidget {
  const SquareViewPosterItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removeViewInsets(
      removeRight: true,
      removeLeft: true,
      removeTop: true,
      removeBottom: true,
      context: context,
      child: Card(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 8,
        clipBehavior: Clip.antiAlias,
        shadowColor: Colors.black,
        child: SizedBox(
          width: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                child: Image.asset(
                  "assets/images/slider.png",
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 4,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  'Nutritional Supplements',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 12,
                    color: HexColor.fromHex('#404040'),
                    fontFamily: 'OpenSens',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor.fromHex('#00573D'),
                      minimumSize: Size.fromHeight(20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0))),
                  onPressed: () {},
                  child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'Learn More',
                        style: TextStyle(
                            fontSize: 12,
                            color: HexColor.fromHex("#FFFFFF"),
                            fontFamily: 'OpenSens',
                            fontWeight: FontWeight.w500),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
