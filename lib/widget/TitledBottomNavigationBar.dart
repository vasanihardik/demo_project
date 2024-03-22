import 'dart:ui' show lerpDouble;

import 'package:flutter/material.dart';

import 'navigation_bar_item.dart';

const double DEFAULT_BAR_HEIGHT = 60;

const double DEFAULT_INDICATOR_HEIGHT = 2;

// ignore: must_be_immutable
class TitledBottomNavigationBar extends StatefulWidget {
  final bool reverse;
  final Curve curve;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? inactiveStripColor;
  final Color? indicatorColor;
  final bool enableShadow;
  int currentIndex;

  /// Called when a item is tapped.
  ///
  /// This provide the selected item's index.
  final ValueChanged<int> onTap;

  /// The items of this navigation bar.
  ///
  /// This should contain at least two items and five at most.
  final List<TitledNavigationBarItem> items;

  /// The selected item is indicator height.
  ///
  /// Defaults to [DEFAULT_INDICATOR_HEIGHT].
  final double indicatorHeight;

  /// Change the navigation bar's size.
  ///
  /// Defaults to [DEFAULT_BAR_HEIGHT].
  final double height;

  TitledBottomNavigationBar({
    Key? key,
    this.reverse = false,
    this.curve = Curves.linear,
    required this.onTap,
    required this.items,
    this.activeColor,
    this.inactiveColor,
    this.inactiveStripColor,
    this.indicatorColor,
    this.enableShadow = true,
    this.currentIndex = 0,
    this.height = DEFAULT_BAR_HEIGHT,
    this.indicatorHeight = DEFAULT_INDICATOR_HEIGHT,
  })  : assert(items.length >= 2 && items.length <= 5),
        super(key: key);

  @override
  State createState() => _TitledBottomNavigationBarState();
}

class _TitledBottomNavigationBarState extends State<TitledBottomNavigationBar> {
  bool get reverse => widget.reverse;

  Curve get curve => widget.curve;

  List<TitledNavigationBarItem> get items => widget.items;

  double width = 0;
  Color? activeColor;
  Duration duration = const Duration(milliseconds: 270);

  double _getIndicatorPosition(int index) {
    var isLtr = Directionality.of(context) == TextDirection.ltr;
    if (isLtr) {
      return lerpDouble(-1.0, 1.0, index / (items.length - 1))!;
    } else {
      return lerpDouble(1.0, -1.0, index / (items.length - 1))!;
    }
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    activeColor = widget.activeColor ?? Theme.of(context).indicatorColor;

    return Container(
      height: widget.height + MediaQuery.of(context).viewPadding.bottom,
      width: width,
      decoration: BoxDecoration(
        color: widget.inactiveStripColor ?? Theme.of(context).cardColor,
        boxShadow: widget.enableShadow
            ? [
                const BoxShadow(color: Colors.black12, blurRadius: 10),
              ]
            : null,
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: widget.indicatorHeight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: items.map((item) {
                var index = items.indexOf(item);
                return GestureDetector(
                  onTap: () => _select(index),
                  child: _buildItemWidget(item, index == widget.currentIndex),
                );
              }).toList(),
            ),
          ),
          Positioned(
            top: 0,
            width: width,
            child: AnimatedAlign(
              alignment:
                  Alignment(_getIndicatorPosition(widget.currentIndex), 0),
              curve: curve,
              duration: duration,
              child: Container(
                color: widget.indicatorColor ?? activeColor,
                width: width / items.length,
                height: widget.indicatorHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _select(int index) {
    widget.currentIndex = index;
    widget.onTap(widget.currentIndex);

    /*for(int i = 0;i<items.length;i++){
      if (index == i) {
        items[index].isSelected = true;
      } else {
        items[index].isSelected = false;
      }
    }*/

    if (index == 0) {
      items[0].isSelected = true;
      items[1].isSelected = false;
      items[2].isSelected = false;
      items[3].isSelected = false;
      items[4].isSelected = false;
    } else if (index == 1) {
      items[0].isSelected = false;
      items[1].isSelected = true;
      items[2].isSelected = false;
      items[3].isSelected = false;
      items[4].isSelected = false;
    } else if (index == 2) {
      items[0].isSelected = false;
      items[1].isSelected = false;
      items[2].isSelected = true;
      items[3].isSelected = false;
      items[4].isSelected = false;
    } else if (index == 3) {
      items[0].isSelected = false;
      items[1].isSelected = false;
      items[2].isSelected = false;
      items[3].isSelected = true;
      items[4].isSelected = false;
    } else if (index == 4) {
      items[0].isSelected = false;
      items[1].isSelected = false;
      items[2].isSelected = false;
      items[3].isSelected = false;
      items[4].isSelected = true;
    }

    setState(() {});
  }

  Widget _buildIcon(TitledNavigationBarItem item) {
    return SizedBox(
      child: Image.asset(item.icon, color:  item.isSelected ? activeColor : widget.inactiveColor,),
    );
  }

  Widget _buildText(TitledNavigationBarItem item) {
    return DefaultTextStyle.merge(
      child: item.title,
      style: TextStyle(
          color: item.isSelected ? activeColor : widget.inactiveColor, fontSize: 10),
    );
  }

  Widget _buildItemWidget(TitledNavigationBarItem item, bool isSelected) {
    return Container(
      color: item.backgroundColor,
      height: widget.height,
      width: width / items.length,
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              _buildIcon(item),
              const SizedBox(
                height: 5,
              ),
              _buildText(item)
            ],
          )
        ],
      ),
    );
  }
}
