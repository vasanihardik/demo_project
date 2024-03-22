import 'package:flutter/material.dart';
import 'package:quiz_demo/supplements/GridViewSupplementsItem.dart';
import 'package:quiz_demo/utils/extensions.dart';

class GridListViewSupplements extends StatelessWidget {
  const GridListViewSupplements({Key? key, required this.titleName, required this.isVisibleTitle}) : super(key: key);
  final String titleName;
  final bool isVisibleTitle;

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
                child: Visibility(
                  visible: isVisibleTitle,
                  child: Text(
                    titleName,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: 'OpenSens',
                      color: HexColor.fromHex('#404040'),
                    ),
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
              itemCount: 14,
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
                return const GridViewSupplementsItem();
              },
            ),
          )
        ],
      ),
    );
  }
}
