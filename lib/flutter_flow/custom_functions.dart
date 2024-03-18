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
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

DateTime newCustomFunction(
  String? eraName,
  int year,
  int month,
  int day,
) {
  // 元号の開始年一覧を作成
  final Map<String, DateTime> eraStartDates = {
    '明治': DateTime(1868, 1, 25),
    '大正': DateTime(1912, 7, 30),
    '昭和': DateTime(1926, 12, 25),
    '平成': DateTime(1989, 1, 8),
    '令和': DateTime(2019, 5, 1),
  };

  if (eraName == null || !eraStartDates.containsKey(eraName)) {
    return DateTime(year, month, day);
  } else {
    // 一覧から開始年を取得
    DateTime eraStartDate = eraStartDates[eraName]!;
    // 元号の年+西暦の開始年（元年は1年と数えるため-1する）
    int correctedYear = eraStartDate.year + (year - 1);
    DateTime correctedDateTime = DateTime(correctedYear, month, day);
    return correctedDateTime;
  }
}
