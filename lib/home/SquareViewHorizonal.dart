import 'package:flutter/material.dart';
import 'package:quiz_demo/home/PotraiteViewItem.dart';
import 'package:quiz_demo/home/SquareViewItem.dart';
import 'package:quiz_demo/model/Product.dart';
import 'package:quiz_demo/search_view/search_view.dart';
import 'package:quiz_demo/utils/extensions.dart';

class SquareViewHorizontal extends StatelessWidget {
  const SquareViewHorizontal(
      {Key? key, required this.isSquareView, required this.products})
      : super(key: key);
  final bool isSquareView;
  final List<Products> products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Text(
                  isSquareView ? "Find Supplements" : "Featured",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    fontFamily: 'OpenSens',
                    color: HexColor.fromHex('#404040'),
                  ),
                ),
              ),
              Text(
                "View All",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    fontFamily: 'OpenSens',
                    color: HexColor.fromHex('#00573D'),
                    decoration: TextDecoration.underline),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            height: isSquareView ? 100 : 180,
            child: isSquareView
                ? ListView.builder(
                    itemCount: products.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: SquareViewItem(
                          products: products[index],
                        ),
                        onTap: () {
                          print(index);
                          /*navigate(context, SearchView.route,
                              isRootNavigator: false);*/
                        },
                      );
                    },
                  )
                : ListView.builder(
                    itemBuilder: (context, index) {
                      return const PortraitViewItem();
                    },
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                  ),
          ),
        ],
      ),
    );
  }
}
