import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService extends ChangeNotifier {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  //initilize

  Future initialize() async {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings("ic_launcher");

    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: androidInitializationSettings,
    );

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  //Instant Notifications
  

  //Image notification
 
  //Stylish Notification
 
  //Sheduled Notification

  Future sheduledNotification() async {
    var interval = RepeatInterval.everyMinute;
    var bigPicture = BigPictureStyleInformation(
        DrawableResourceAndroidBitmap("ic_launcher"),
        largeIcon: DrawableResourceAndroidBitmap("ic_launcher"),
        contentTitle: "Hurry Up!!",
        summaryText: "Complete all your pending tasks.",
        htmlFormatContent: true,
        htmlFormatContentTitle: true);

    var android = AndroidNotificationDetails("id", "channel", "description",
        styleInformation: bigPicture);

    var platform = new NotificationDetails(android: android);

    await _flutterLocalNotificationsPlugin.periodicallyShow(
        0, "You are almost there", "Keep it up!!", interval, platform);
  }

  //Cancel notification

  Future cancelNotification() async {
    await _flutterLocalNotificationsPlugin.cancelAll();
  }
}
