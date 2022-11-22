// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:awesome_notifications/awesome_notifications.dart';

Future awesomeNotification(
  int? idDesayuno,
  String? tituloDesayuno,
  String? desayunoMensaje,
  int? idComida,
  String? tituloComida,
  String? comidaMensaje,
  int? idCena,
  String? tituloCena,
  String? cenaMensaje,
  int? desayunoHora,
  int? desayunoMinutos,
  int? comidaHora,
  int? comidaMinutos,
  int? cenaHora,
  int? cenaMinutos,
  bool? desayunoturnedOn,
  bool? comidaturnedOn,
  bool? cenaturnedOn,
) async {
  AwesomeNotifications().initialize(
      // set the icon to null if you want to use the default app icon
      '',
      [
        NotificationChannel(
            channelGroupKey: 'scheduled_channel_group',
            channelKey: 'morning',
            channelName: 'Morning reminder',
            channelDescription: 'Notification for morning reminders',
            ledColor: Colors.white),
        NotificationChannel(
            channelGroupKey: 'scheduled_channel_group',
            channelKey: 'evening',
            channelName: 'Evening reminder',
            channelDescription: 'Notification for evening reminders',
            ledColor: Colors.white),
        NotificationChannel(
            channelGroupKey: 'scheduled_channel_group',
            channelKey: 'night',
            channelName: 'Night reminder',
            channelDescription: 'Notification for night reminders',
            ledColor: Colors.white)
      ],
      // Channel groups are only visual and are not required
      channelGroups: [
        NotificationChannelGroup(
            channelGroupkey: 'scheduled_channel_group',
            channelGroupName: 'Reminders')
      ],
      debug: true);

  AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
    if (!isAllowed) {
      // This is just a basic example. For real apps, you must show some
      // friendly dialog box before call the request method.
      // This is very important to not harm the user experience
      AwesomeNotifications().requestPermissionToSendNotifications();
    }
  });

  String localTimeZone =
      await AwesomeNotifications().getLocalTimeZoneIdentifier();

  if (desayunoturnedOn == true) {
    await AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: idDesayuno!,
          channelKey: 'morning',
          title: tituloDesayuno,
          body: desayunoMensaje,
          wakeUpScreen: true,
          category: NotificationCategory.Reminder,
          notificationLayout: NotificationLayout.Default,
        ),
        schedule: NotificationCalendar(
            hour: desayunoHora,
            minute: desayunoMinutos,
            second: 00,
            timeZone: localTimeZone,
            preciseAlarm: true,
            repeats: true));
  }
  if (desayunoturnedOn == false) {
    await AwesomeNotifications().cancel(idDesayuno!);
  }

  if (comidaturnedOn == true) {
    await AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: idComida!,
          channelKey: 'evening',
          title: tituloComida,
          body: comidaMensaje,
          wakeUpScreen: true,
          category: NotificationCategory.Reminder,
          notificationLayout: NotificationLayout.Default,
        ),
        schedule: NotificationCalendar(
            hour: comidaHora,
            minute: comidaMinutos,
            second: 00,
            timeZone: localTimeZone,
            preciseAlarm: true,
            repeats: true));
  }
  if (comidaturnedOn == false) {
    await AwesomeNotifications().cancel(idComida!);
  }

  if (cenaturnedOn == true) {
    await AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: idCena!,
          channelKey: 'night',
          title: tituloCena,
          body: cenaMensaje,
          wakeUpScreen: true,
          category: NotificationCategory.Reminder,
          notificationLayout: NotificationLayout.Default,
        ),
        schedule: NotificationCalendar(
            hour: cenaHora,
            minute: cenaMinutos,
            second: 00,
            timeZone: localTimeZone,
            preciseAlarm: true,
            repeats: true));
  }
  if (cenaturnedOn == false) {
    await AwesomeNotifications().cancel(idCena!);
  }
}
