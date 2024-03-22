import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_demo/utils/extensions.dart';


class NavbarNotifier extends ChangeNotifier {


  int _index = 0;
  int get index => _index;
  bool _hideBottomNavBar = false;

  set index(int x) {
    _index = x;
    notifyListeners();
  }

  bool get hideBottomNavBar => _hideBottomNavBar;

  set hideBottomNavBar(bool x) {
    _hideBottomNavBar = x;
    notifyListeners();
  }

  // pop routes from the nested navigator stack and not the main stack
  // this is done based on the currentIndex of the bottom navbar
  // if the backButton is pressed on the initial route the app will be terminated
  FutureOr<bool> onBackButtonPressed() async {
    bool exitingApp = true;
    switch (index) {
      case 0:
        if (homeKey.currentState != null && homeKey.currentState!.canPop()) {
          homeKey.currentState!.pop();
          exitingApp = false;
        }
        break;
      case 1:
        if (supplementsKey.currentState != null &&
            supplementsKey.currentState!.canPop()) {
          supplementsKey.currentState!.pop();
          exitingApp = false;
        }
        break;
      case 2:
        if (favouriteKey.currentState != null &&
            favouriteKey.currentState!.canPop()) {
          favouriteKey.currentState!.pop();
          exitingApp = false;
        }
        break;
      default:
        return false;
    }
    if (exitingApp) {
      return true;
    } else {
      return false;
    }
  }

  // pops all routes except first, if there are more than 1 route in each navigator stack
  void popAllRoutes(int index) {
    switch (index) {
      case 0:
        if (homeKey.currentState!.canPop()) {
          homeKey.currentState!.popUntil((route) => route.isFirst);
        }
        return;
      case 1:
        if (supplementsKey.currentState!.canPop()) {
          supplementsKey.currentState!.popUntil((route) => route.isFirst);
        }
        return;
      case 2:
        if (favouriteKey.currentState!.canPop()) {
          favouriteKey.currentState!.popUntil((route) => route.isFirst);
        }
        return;
      default:
        break;
    }
  }
}