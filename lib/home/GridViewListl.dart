import 'package:flutter/material.dart';
import 'package:quiz_demo/home/GridViewItem.dart';
import 'package:quiz_demo/utils/extensions.dart';

class GridListView extends StatelessWidget {
  const GridListView({Key? key}) : super(key: key);

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
              Expanded(
                child: Text(
                  "Brands",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    fontFamily: 'OpenSens',
                    color: HexColor.fromHex('#404040'),
                  ),
                ),
              ),
              Visibility(
                visible: false,
                child: Text(
                  "View All",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      fontFamily: 'OpenSens',
                      color: HexColor.fromHex('#00573D'),
                      decoration: TextDecoration.underline),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: GridView.builder(
              itemCount: 8,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 6),
              ),
              itemBuilder: (BuildContext context, int index) {
                return GridViewItem();
              },
            ),
          )
        ],
      ),
    );
  }
}
