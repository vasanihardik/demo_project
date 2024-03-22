import 'package:flutter/material.dart';
import 'package:quiz_demo/account/text_options.dart';
import 'package:quiz_demo/reels/ui/reels_view.dart';
import 'package:quiz_demo/utils/extensions.dart';

class AccountView extends StatefulWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      clipBehavior: Clip.hardEdge,
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              color: HexColor.fromHex('#00573D'),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Account',
                    style: TextStyle(
                      fontFamily: 'OpenSens',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: HexColor.fromHex('#FFFFFF'),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Dr. Gordon Grills',
                          style: TextStyle(
                            fontFamily: 'OpenSens',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: HexColor.fromHex('#FFFFFF'),
                          ),
                        ),
                      ),
                      Text(
                        'Edit',
                        style: TextStyle(
                            fontFamily: 'OpenSens',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: HexColor.fromHex('#FFFFFF'),
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            decorationThickness: 4),
                      )
                    ],
                  ),
                  Text(
                    '+1 800-558-8746',
                    style: TextStyle(
                      fontFamily: 'OpenSens',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                      color: HexColor.fromHex('#FFFFFF'),
                    ),
                  ),
                  Text(
                    'info@standardprocess.com',
                    style: TextStyle(
                      fontFamily: 'OpenSens',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                      color: HexColor.fromHex('#FFFFFF'),
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 160,
          left: 10,
          right: 10,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Card(
                  surfaceTintColor: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextViewOptions(
                            name: 'Order History', isDividerVisible: true),
                        TextViewOptions(
                            name: 'Change My Password', isDividerVisible: true),
                        TextViewOptions(
                            name: 'Favorites', isDividerVisible: true),
                        TextViewOptions(
                            name: 'Saved Addresses', isDividerVisible: true),
                        TextViewOptions(
                            name: 'Payment', isDividerVisible: true),
                        TextViewOptions(name: 'FAQs', isDividerVisible: true),
                        TextViewOptions(
                            name: 'Terms & Conditions', isDividerVisible: true),
                        TextViewOptions(
                            name: 'standardprocess.com',
                            isDividerVisible: false),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RealsView(),
                      ),
                    );
                    //navigate(context, SearchView.route, isRootNavigator: false);
                  },
                  child: Text(
                    'Logout',
                    style: TextStyle(
                        fontFamily: 'OpenSens',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: HexColor.fromHex("#00573D"),
                        decorationThickness: 2.4,
                        decorationColor: HexColor.fromHex("#00573D"),
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
