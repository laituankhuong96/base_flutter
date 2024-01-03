import 'dart:core';
import 'package:flutter/foundation.dart';

@immutable
class LocaleEntity {
  const LocaleEntity({
    required this.name,
    required this.langCode,
    required this.flag,
  });

  final String name;
  final LocaleSupport langCode;
  final String flag;
}

enum LocaleSupport { vi, en }
