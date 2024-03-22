import 'package:flutter/material.dart';
import 'package:quiz_demo/model/Product.dart';
import 'package:quiz_demo/utils/extensions.dart';

class SquareViewItem extends StatelessWidget {
  const SquareViewItem({Key? key, required this.products}) : super(key: key);
  final Products products;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 8,
      shadowColor: Colors.black,
      child: SizedBox(
        height: 100,
        width: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Column(
            children: [
              Image(
                image: NetworkImage(products.thumbnail!),
                height: 40,
                width: 40,
              ),
              const SizedBox(
                height: 4,
              ),
              Expanded(
                child: Text(
                  products.title!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: HexColor.fromHex('#404040'),
                    fontFamily: 'OpenSens',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
