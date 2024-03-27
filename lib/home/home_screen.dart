import 'dart:collection';
import 'dart:convert';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:quiz_demo/account/account_view.dart';
import 'package:quiz_demo/cart/cart_view.dart';
import 'package:quiz_demo/favourite/favourite_view.dart';
import 'package:quiz_demo/graphql/graphql_config.dart';
import 'package:quiz_demo/graphql/schema/queries.graphql.dart';
import 'package:quiz_demo/home/home_view.dart';
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

  Future<void> setupInteractedMessage() async {
    await FirebaseMessaging.instance
        .getInitialMessage()
        .then((value) => _handleMessage(value != null ? value.data : Map()));
  }

  void _handleMessage(Map<String, dynamic> data) {

    print('Notification object ${data}');
    if (data['redirect'] == "product") {
      /*Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProductPage(message: data['message'])));*/
    }
  }

  void _onItemTapped(int index) {
    //FirebaseCrashlytics.instance.crash();

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    //addQueryData();
    getQueryData();

    FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage? message) async {
      RemoteNotification? notification = message?.notification!;

      print(notification != null ? notification.title : '');
    });

    FirebaseMessaging.onMessage.listen((message) async {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

      if (notification != null && android != null && !kIsWeb) {
        String action = jsonEncode(message.data);

        FlutterLocalNotificationsPlugin().show(
            notification.hashCode,
            notification.title,
            notification.body,
            const NotificationDetails(
              android: AndroidNotificationDetails(
                'flutter_notification', // id
                'flutter_notification_title',
                priority: Priority.high,
                importance: Importance.max,
                setAsGroupSummary: true,
                styleInformation: DefaultStyleInformation(true, true),
                largeIcon: DrawableResourceAndroidBitmap('@mipmap/ic_launcher'),
                channelShowBadge: true,
                autoCancel: true,
                icon: '@drawable/ic_notifications_icon',
              ),
            ),
            payload: action);
      }
      print('A new event was published!');
    });

    setupInteractedMessage();
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

  Future getQueryData() async {
    final res = await GraphQlConfig()
        .clientToQuery()
        .query$GetData(Options$Query$GetData());

    final pased = res.parsedData;
    print(
        'object ID --> ${pased?.Graph_ql[0].id}  Name =>>>${pased?.Graph_ql[0].name}');
  }

  Future addQueryData() async {
    final res = await GraphQlConfig().clientToQuery().mutate$InsertData(
        Options$Mutation$InsertData(
            variables:
                Variables$Mutation$InsertData(id: 3, name: "Anil bhai")));

    final pased = res.parsedData;
    print('object ID --> ${pased.toString()}');
  }
}
