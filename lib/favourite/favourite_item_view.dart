import 'package:flutter/material.dart';
import 'package:quiz_demo/utils/extensions.dart';

class FavouriteItemView extends StatelessWidget {
  const FavouriteItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          color: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 8,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))
          ),
          shadowColor: Colors.black,
          child: Container(
            padding: const EdgeInsets.only(top: 8,bottom: 4,left: 4,right: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/portraite_place_holder.png",
                        height: 100,
                        width: 80,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        "assets/images/ic_favourite.png",
                        height: 24,
                        width: 24,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'A-F Betafood®',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 12,
                    color: HexColor.fromHex('#404040'),
                    fontFamily: 'OpenSens',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Gallbladder health*',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 12,
                    color: HexColor.fromHex('#404040'),
                    fontFamily: 'OpenSens',
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                    padding: EdgeInsets.only(left: 4),
                    decoration: BoxDecoration(
                        color: HexColor.fromHex('#F5F5F5'),
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    child: Row(
                      children: [
                        Text(
                          '(0800)180 Tablets - \$30.80',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 10,
                            color: HexColor.fromHex('#404040'),
                            fontFamily: 'OpenSens',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Icon(Icons.arrow_drop_down)
                      ],
                    )),
                const SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: HexColor.fromHex('#00573D'),
                        minimumSize: const Size.fromHeight(20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0))),
                    onPressed: () {},
                    child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          'Add To Cart',
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
      ],
    );;
  }
}
