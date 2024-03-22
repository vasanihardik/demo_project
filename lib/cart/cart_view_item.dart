import 'package:flutter/material.dart';
import 'package:quiz_demo/model/Product.dart';
import 'package:quiz_demo/utils/extensions.dart';

class CartViewItem extends StatelessWidget {
  const CartViewItem({Key? key, required this.product}) : super(key: key);

  final Products product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        elevation: 8,
        color: Colors.white,
        surfaceTintColor: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 28,
                ),
                Image.network(
                  product.thumbnail!,
                  height: 97,
                  width: 65,
                  fit: BoxFit.fill,
                )
                /*Image(
                  image: NetworkImage(product.thumbnail!),
                  // image: NetworkImage(product.thumbnail!),
                  height: 97,
                  width: 65,
                  fit: BoxFit.fill,
                )*/
                ,
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      '(5375)90 Capsules - \$25.30',
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
                    Text(
                      'SLP : \$56.50',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 12,
                        color: HexColor.fromHex('#404040'),
                        fontFamily: 'OpenSens',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Your Price : \$25.30',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 12,
                        color: HexColor.fromHex('#6D7E44'),
                        fontFamily: 'OpenSens',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 4),
                        decoration: BoxDecoration(
                            color: HexColor.fromHex('#F5F5F5'),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4))),
                        child: Row(
                          children: [
                            Text(
                              'Quantity : 1',
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
                    )
                  ],
                ),
                const SizedBox(
                  width: 28,
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border: Border(
                      top: BorderSide(
                        color: HexColor.fromHex('#F5F5F5'),
                      ),
                    )),
                    child: Center(
                      child: Text(
                        'Save For Later',
                        style: TextStyle(
                          fontSize: 12,
                          color: HexColor.fromHex('#00573D'),
                          fontFamily: 'OpenSens',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: HexColor.fromHex('#F5F5F5')),
                        left: BorderSide(color: HexColor.fromHex('#F5F5F5')),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Remove',
                        style: TextStyle(
                          fontSize: 12,
                          color: HexColor.fromHex('#00573D'),
                          fontFamily: 'OpenSens',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
