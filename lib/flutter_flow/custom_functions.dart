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

DateTime convertEraToDate(
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

List<DateTime> createOrderedList(
  List<DateTime>? targetMonths,
  DateTime targetMonth,
) {
// targetMonthsがnullの場合は空のリストを使う
  List<DateTime> orderedList = List<DateTime>.from(targetMonths ?? []);
  // targetMonthをリストに追加
  orderedList.add(targetMonth);
  // リストを昇順に並べ替える
  orderedList.sort((a, b) => a.compareTo(b));
  // 並べ替えたリストを返す
  return orderedList;
}

String returnMonthsString(List<DateTime>? dates) {
  if (dates == null || dates.isEmpty) {
    return '未設定です。';
  }

  dates.sort((a, b) => a.compareTo(b));
  // 月の名前を格納するリストを作成
  List<String> monthNames = dates.map((date) => '${date.month}月').toList();

  // リストをカンマで結合
  String monthsString = monthNames.join('、');

  return monthsString;
}

int returnAge(
  DateTime? birthDate,
  DateTime deathAnniversary,
) {
  if (birthDate == null) {
    return -1;
  }
  int age = deathAnniversary.year - birthDate.year;

  // 今日の月日が生年月日の月日より前の場合、まだ誕生日を迎えていないので年齢から1を引く
  if (deathAnniversary.month < birthDate.month ||
      (deathAnniversary.month == birthDate.month &&
          deathAnniversary.day < birthDate.day)) {
    age--;
  }

  return age;
}

List<String> devideBySpace(String targetString) {
  return targetString.split(' ');
}

List<DateTime> returnSelectableMonths(DateTime currentDate) {
  int nextMonth = currentDate.month % 12 + 1;
  List<DateTime> months = List<DateTime>.generate(12, (i) {
    // 計算された年と月を持つ新しいDateTimeオブジェクトを作成
    int year = currentDate.year;
    int month = currentDate.month + i + 1;

    // 月が12を超える場合、年をインクリメント
    if (month > 12) {
      month -= 12;
      year++;
    }

    return DateTime(year, month);
  });
  return months;
}
