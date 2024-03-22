import 'package:flutter/material.dart';
import 'package:quiz_demo/utils/extensions.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 8,
      shadowColor: Colors.black,
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/grid_place_holder.png",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
