import 'package:flutter/material.dart';
import 'package:quiz_demo/favourite/favourite_item_view.dart';
import 'package:quiz_demo/supplements/GridViewListSupplements.dart';
import 'package:quiz_demo/utils/extensions.dart';

class FavouriteView extends StatefulWidget {
  const FavouriteView({Key? key}) : super(key: key);

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 90,
          width: double.infinity,
          color: HexColor.fromHex('#00573D'),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Favourite',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'OpenSens',
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding:  const EdgeInsets.all(8.0),
            child: SizedBox(
              child: GridView.builder(
                itemCount: 28,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.7),
                ),
                itemBuilder: (BuildContext context, int index) {
                  return const FavouriteItemView();
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
