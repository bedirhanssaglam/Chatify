import 'package:cloud_firestore/cloud_firestore.dart';

extension TimestampExtensions on Timestamp {
  String get toFormattedTime {
    final DateTime dateTime = toDate();
    final String formattedHour = dateTime.hour.toString().padLeft(2, '0');
    final String formattedMinute = dateTime.minute.toString().padLeft(2, '0');
    return '$formattedHour:$formattedMinute';
  }
}
