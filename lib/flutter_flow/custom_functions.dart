import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String validateDeppLink(dynamic data) {
  if (data is Map && data.containsKey('AdminMobileCode')) {
    String page = '';
    page = data['AdminMobileCode'];
    if (page.isNotEmpty) {
      return page;
    }
  }
  return '';
}
