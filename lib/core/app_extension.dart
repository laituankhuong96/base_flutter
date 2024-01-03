import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:vcm360/core/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AppLocalizationsExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;

  void hideKeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(this);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      currentFocus.focusedChild?.unfocus();
    }
  }
}

extension StringExtension on String {
  String get getGenderWidget {
    if (this == "male") return AppAsset.male;
    return AppAsset.female;
  }

  String get toCapital {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String get removeDiacritics {
    return replaceAll(RegExp(r'[^\x00-\x7F]'), '').toLowerCase();
  }

  bool get success {
    if (this == 'OK') {
      return true;
    }
    return false;
  }
}

extension ListExtension on List {
  void toggle<T>(T val, {bool? condition}) {
    if (T == String || T == int) {
      if (!contains(val)) {
        add(val);
      } else {
        remove(val);
      }
    } else {
      // đang bị lỗi logic khi T là object
      if (condition ?? false) {
        remove(val);
      } else {
        add(val);
      }
    }
  }

  void toggleAll<T>(List<T> list) {
    if (length == list.length) {
      clear();
    } else {
      clear();
      addAll(list);
    }
  }

  /// [object] : Object to check
  /// [condition] : Condition to check
  bool hasObjectInList<T>(
    T object,
    bool Function(T, T) condition,
  ) {
    return any((item) => condition(item, object));
  }
}

extension SetExtension on Set {
  void toggle(String val) {
    if (!contains(val)) {
      add(val);
    } else {
      remove(val);
    }
  }

  void toggleAll(List<String> list) {
    if (length == list.length) {
      clear();
    } else {
      addAll(list);
    }
  }
}

extension IntegetExtension on int? {
  bool get success {
    if (this == 200 || this == 201 || this == 204) {
      return true;
    }
    return false;
  }
}

extension GeneralExtension<T> on T {
  bool get isEnum {
    final split = toString().split('.');
    return split.length > 1 && split[0] == runtimeType.toString();
  }

  String get getEnumString => toString().split('.').last.toCapital;
}

extension IterableExtension<T> on Iterable<T> {
  Iterable<E> mapWithIndex<E>(E Function(int index, T value) f) {
    return Iterable.generate(length).map((i) => f(i, elementAt(i)));
  }
}

extension MapExtension on Map {
  String get format {
    if (isEmpty) {
      return "";
    } else {
      var firstKey = entries.first.key;
      var mapValues = entries.first.value;
      return "?$firstKey=$mapValues";
    }
  }
}

extension FileExtention on File {
  int get size {
    int sizeInBytes = lengthSync();
    double sizeInMb = sizeInBytes / (1024 * 1024);
    return sizeInBytes;
  }

  String get name {
    return path.basename(this.path);
  }
}

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(int i, E e) f) {
    var i = 0;
    return map((e) => f(i++, e));
  }
}

//Helper functions
void pop(BuildContext context, int returnedLevel) {
  for (var i = 0; i < returnedLevel; ++i) {
    Navigator.pop(context, true);
  }
}
