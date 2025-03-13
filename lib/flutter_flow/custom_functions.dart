import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<DateTime> listaHoras(
  DateTime openHour,
  DateTime closeHour,
) {
  List<DateTime> hours = [];

  DateTime currentHours = DateTime(
    openHour.year,
    openHour.month,
    openHour.day,
    openHour.hour,
  );

  while (currentHours.isBefore(closeHour)) {
    hours.add(currentHours);
    currentHours = currentHours.add(Duration(hours: 1));
  }

  return hours;
}

DateTime? seleccionHora(String hora) {
  final now = DateTime.now();
  final hoursAndMinute = hora.split(':');
  final hour = int.parse(hoursAndMinute[0]);
  final minute = int.parse(hoursAndMinute[1]);

  return DateTime(now.year, now.month, now.day, hour, minute);
}
