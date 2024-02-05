import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FirebaseMessagingRemoteDatasource {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    const initializationSettingsAndroid =
        AndroidInitializationSettings('ic_seller');
    final initializationSettingsIOS = DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
        onDidReceiveLocalNotification:
            (int id, String? title, String? body, String? payload) async {
          // showNotification(id: id, title: title, body: body, payLoad: payload);
        });

    final initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse:
            (NotificationResponse notificationResponse) async {});
    final fcmToken = await _firebaseMessaging.getToken();

    print('Token: $fcmToken');

    FirebaseMessaging.instance.getInitialMessage();
    FirebaseMessaging.onMessage.listen((message) {
      print(message.notification?.body);
      print(message.notification?.title);
    });

    FirebaseMessaging.onMessage.listen(firebaseBackgroundHandler);
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(firebaseBackgroundHandler);
  }

  Future showNotification(
      {int id = 0, String? title, String? body, String? payLoad}) async {
    return flutterLocalNotificationsPlugin.show(
      id,
      title,
      body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
            'com.example.flutter_fic12_grocery_app', 'app',
            importance: Importance.max),
        iOS: DarwinNotificationDetails(),
      ),
    );
  }

  Future<void> firebaseBackgroundHandler(RemoteMessage message) async {
    showNotification(
      title: message.notification!.title,
      body: message.notification!.body,
    );
  }
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  FirebaseMessagingRemoteDatasource().firebaseBackgroundHandler(message);
}
