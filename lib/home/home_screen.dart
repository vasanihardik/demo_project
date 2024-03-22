import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_demo/account/account_view.dart';
import 'package:quiz_demo/cart/cart_view.dart';
import 'package:quiz_demo/favourite/favourite_view.dart';
import 'package:quiz_demo/home/home_view.dart';
import 'package:quiz_demo/main.dart';
import 'package:quiz_demo/supplements/supplements_view.dart';
import 'package:quiz_demo/utils/extensions.dart';
import 'package:quiz_demo/widget/TitledBottomNavigationBar.dart';
import 'package:quiz_demo/widget/navigation_bar_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final childView = const <Widget>[
    HomeView(),
    SupplementsView(),
    FavouriteView(),
    CartView(),
    AccountView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _selectedIndex == 0,
      onPopInvoked: (didPop) {
        if (_selectedIndex != 0) {
          _onItemTapped(0);
        }
        print("testing $didPop");
      },
      child: Scaffold(
        body: SafeArea(
          child: IndexedStack(index: _selectedIndex, children: childView),
        ),
        bottomNavigationBar: TitledBottomNavigationBar(
            reverse: true,
            activeColor: HexColor.fromHex("#00573D"),
            inactiveColor: HexColor.fromHex("#404040"),
            curve: Curves.bounceIn,
            currentIndex: _selectedIndex,
            // Use this to update the Bar giving a position
            onTap: (index) {
              _onItemTapped(index);
            },
            items: [
              TitledNavigationBarItem(
                  title: const Text('Home'),
                  isSelected: true,
                  icon: "assets/images/home_tab.png"),
              TitledNavigationBarItem(
                  title: const Text('Supplements'),
                  isSelected: false,
                  icon: "assets/images/home_suppliment.png"),
              TitledNavigationBarItem(
                  title: const Text('Favourite'),
                  isSelected: false,
                  icon: "assets/images/home_favourite.png"),
              TitledNavigationBarItem(
                  title: const Text('My Cart'),
                  isSelected: false,
                  icon: "assets/images/home_cart.png"),
              TitledNavigationBarItem(
                  title: const Text('Account'),
                  isSelected: false,
                  icon: "assets/images/home_account.png"),
            ]),
      ),
    );
  }
}
