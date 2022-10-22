// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

Future phoneCall(String phoneNumber) async {
  var number = phoneNumber;
  await FlutterPhoneDirectCaller.callNumber(number);
}
