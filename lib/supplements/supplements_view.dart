import 'package:flutter/material.dart';
import 'package:quiz_demo/home/GridViewListl.dart';
import 'package:quiz_demo/supplements/GridViewListSupplements.dart';
import 'package:quiz_demo/utils/extensions.dart';
import 'package:quiz_demo/widget/search_edittext.dart';

class SupplementsView extends StatefulWidget {
  const SupplementsView({Key? key}) : super(key: key);

  @override
  State<SupplementsView> createState() => _SupplementsViewState();
}

class _SupplementsViewState extends State<SupplementsView> {

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: HexColor.fromHex('#00573D'),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Find Supplements',
                  style: TextStyle(
                      color: HexColor.fromHex('#FFFFFF'),
                      fontFamily: 'OpenSens',
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 10,
              ),
              SearchEditText(
                hintText: 'Search',
                textController: _textController,
                getString: (String value) {

                },
              ),
              const SizedBox(
                height: 6,
              ),
            ],
          ),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GridListViewSupplements(isVisibleTitle: false,titleName: ""),
                  GridListView(),
                  GridListViewSupplements(isVisibleTitle: true,titleName: "More")
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
