import 'package:flutter/material.dart';

import '../utils/extensions.dart';

class AccountViewItem extends StatelessWidget {
  const AccountViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: HexColor.fromHex('#FFFFFF'),
        surfaceTintColor: HexColor.fromHex('#FFFFFF'),
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.only(left: 8,bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      'Dr. Gordon Grills',
                      style: TextStyle(
                          color: HexColor.fromHex('#404040'),
                          fontFamily: 'OpenSens',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                            color: HexColor.fromHex('#6D7E44'),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                            )),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2.0),
                            child: Text(
                              'Confirmed',
                              style: TextStyle(
                                  color: HexColor.fromHex('#FFFFFF'),
                                  fontFamily: 'OpenSens',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      '12 Items. Delivered 20 Mar 2023, 12 Items. Delivered 20 Mar 2023, ',
                      style: TextStyle(
                          color: HexColor.fromHex('#404040'),
                          fontFamily: 'OpenSens',
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Text(
                    '\$284.75',
                    style: TextStyle(
                        color: HexColor.fromHex('#404040'),
                        fontFamily: 'OpenSens',
                        fontWeight: FontWeight.w600),
                  ),SizedBox(width: 10,)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order No',
                        style: TextStyle(
                            color: HexColor.fromHex('#404040'),
                            fontFamily: 'OpenSens',
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        '228429849',
                        style: TextStyle(
                            color: HexColor.fromHex('#404040'),
                            fontFamily: 'OpenSens',
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order No',
                        style: TextStyle(
                            color: HexColor.fromHex('#404040'),
                            fontFamily: 'OpenSens',
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        '228429849',
                        style: TextStyle(
                            color: HexColor.fromHex('#404040'),
                            fontFamily: 'OpenSens',
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
