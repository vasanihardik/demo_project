import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:quiz_demo/cachevideoplayer/services/video_controller_service.dart';
import 'package:quiz_demo/home/home_screen.dart';
import 'package:quiz_demo/login/bloc/my_form_bloc.dart';
import 'package:quiz_demo/utils/extensions.dart';
import 'package:quiz_demo/utils/languages_string.dart';
import 'package:sizer/sizer.dart';

AndroidNotificationChannel? channel;

FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;
late FirebaseMessaging messaging;

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void notificationTapBackground(NotificationResponse notificationResponse) {
  print('notification(${notificationResponse.id}) action tapped: '
      '${notificationResponse.actionId} with'
      ' payload: ${notificationResponse.payload}');
  if (notificationResponse.input?.isNotEmpty ?? false) {
    print(
        'notification action tapped with input: ${notificationResponse.input}');
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(
      name: "SP dev",
      options: const FirebaseOptions(
        apiKey: "AIzaSyCmxVOZK2Bg-3OTn0MRcVO_UlPnY4rfptc",
        appId: "1:990997124976:android:4ac4fe40244ce1db07e1b5",
        messagingSenderId: "990997124976",
        projectId: "fir-notification-77c65",
      ));
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent, // navigation bar color
    statusBarColor: HexColor.fromHex('#00573D'), // status bar color
  ));

  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyCmxVOZK2Bg-3OTn0MRcVO_UlPnY4rfptc",
    appId: "1:990997124976:android:4ac4fe40244ce1db07e1b5",
    messagingSenderId: "990997124976",
    projectId: "fir-notification-77c65",
  ));

  final FirebaseMessaging messaging = FirebaseMessaging.instance;
  print("Print ==========> $messaging");

  await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  //If subscribe based sent notification then use this token
  final fcmToken = await messaging.getToken();
  print(" FCM Token ==>>>>>>> $fcmToken");

  runApp(RepositoryProvider<VideoControllerService>(
    create: (context) => CachedVideoControllerService(DefaultCacheManager()),
    child: const Main(),
  ));
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MyFormBloc>(
            create: (BuildContext context) => MyFormBloc()),
      ],
      child: Sizer(builder: (context, de, _) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          translations: Language(),
          locale: const Locale("en", "US"),
          fallbackLocale: const Locale("en", "US"),
          builder: (context, child) {
            return MediaQuery(
              //Setting font does not change with system font size
              data: MediaQuery.of(context).copyWith(
                textScaler: const TextScaler.linear(1),
              ),
              child: child ?? const SizedBox.shrink(),
            );
          },
          theme: ThemeData(
            primarySwatch: Colors.purple,
            fontFamily: 'OpenSens',
          ),
          //home: LoginScreen(),
          home: const HomeScreen(),
        );
      }),
    );
  }
}
