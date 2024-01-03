import 'package:vcm360/core/app_string.dart';
import 'package:vcm360/core/app_style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightAppTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red),
    appBarTheme: const AppBarTheme(color: Color(0xFFF4511E), centerTitle: true),
    dialogTheme: const DialogTheme(
      backgroundColor: CustomColor.backgroundPrimary,
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: CustomColor.primary,
      circularTrackColor: CustomColor.primary,
    ),
    splashColor: CustomColor.primary[10],
    highlightColor: CustomColor.primary[10],
    indicatorColor: CustomColor.primary,
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: CustomOutlineBorder.enabledBorder,
      focusedBorder: CustomOutlineBorder.focusedBorder,
      errorBorder: CustomOutlineBorder.errorBorder,
      border: CustomOutlineBorder.inputBorder,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFF4511E), elevation: 0),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFFF4511E),
    ),
    fontFamily: AppString.appFont,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.black54,
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey),
        ),
      ),
    ),
    timePickerTheme: TimePickerThemeData(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        side: BorderSide(color: Colors.grey, width: 2),
      ),
      dialHandColor: const Color(0xFFF4511E),
      hourMinuteColor: MaterialStateColor.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? const Color(0xFFF4511E)
            : Colors.black12,
      ),
      hourMinuteTextColor: MaterialStateColor.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? Colors.black54
            : Colors.grey,
      ),
      dayPeriodBorderSide: const BorderSide(color: Colors.grey),
      dayPeriodShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      dayPeriodColor: Colors.transparent,
      dayPeriodTextColor: MaterialStateColor.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? const Color(0xFFF4511E)
            : Colors.black12,
      ),
      hourMinuteShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.black12),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    ),
  );
}
