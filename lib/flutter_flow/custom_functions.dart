import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String getRandomMessage(List<String> message) {
  // Returns a random element from a list
  var message = [
    'Te quiero mucho, gracias por estar aquí',
    '¡Lo estás haciendo muy bien!',
    'Me gusta cuando vienes a verme',
    '¿Cómo te sientes el día de hoy?',
    'Estoy muy feliz de poder conocerte',
    'Me gustan mucho los nuggets',
    'Me siento bien el día de hoy',
    '¡Qué gran esfuerzo!',
    'Todo tu esfuerzo vale la pena',
    'Me gustan tus ideas',
    '¡Que lejos has llegado!',
    'Te quiero, te quiero, te quiero',
    'Me gusta cuando sonríes',
    'Eres especial, nadie como tú',
    'No hay nadie como tú',
    'Me encanta tu compañía',
    'Sé que puedo confiar en ti',
    'Confía en ti mismo',
    'Grandioso trabajo',
    'Mi kokoro late por ti',
    'Sip, sabe a púrpura.'
  ];
  return message[math.Random().nextInt(message.length)];
}

int obtenerHora(DateTime fecha) {
  return fecha.hour;
}

int obtenerMinutos(DateTime fecha) {
  return fecha.minute;
}
