import 'package:flutter/material.dart';

class CustomColor {
  static const MaterialColor primary = MaterialColor(
    0xFFED2939,
    <int, Color>{
      100: Color(0xFFED2939),
      90: Color(0xFFEF3F4D),
      80: Color(0xFFF15461),
      70: Color(0xFFF36A75),
      60: Color(0xFFF47F88),
      50: Color(0xFFF6949C),
      40: Color(0xFFF8A9B0),
      30: Color(0xFFFABFC4),
      20: Color(0xFFFBD4D7),
      10: Color(0xFFFEEAEC),
    },
  );
  static const MaterialColor black = MaterialColor(
    0xFF070504,
    <int, Color>{
      100: Color(0xFF070504),
      90: Color(0xFF201E1E),
      80: Color(0xFF393736),
      70: Color(0xFF525050),
      60: Color(0xFF6A6968),
      50: Color(0xFF838282),
      40: Color(0xFF9C9B9B),
      30: Color(0xFFB5B4B4),
      20: Color(0xFFCDCDCD),
      10: Color(0xFFF0F1F3),
    },
  );
  static const MaterialColor warning = MaterialColor(
    0xFFF6A609,
    <int, Color>{
      100: Color(0xFFF6A609), // default
      120: Color(0xFFE89806), // dark
      80: Color(0xFFFFBC1F), // light
    },
  );
  static const MaterialColor success = MaterialColor(
    0xFF2AC769,
    <int, Color>{
      100: Color(0xFF2AC769), // default
      120: Color(0xFF1AB759), // dark
      80: Color(0xFF40DD7F), // light
    },
  );
  static const MaterialColor error = MaterialColor(
    0xFFFB4E4E,
    <int, Color>{
      100: Color(0xFFFB4E4E), // default
      120: Color(0xFFE93C3C), // dark
      80: Color(0xFFFF6262), // light
    },
  );
  static const Color pureBlack = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color backgroundPrimary = Color(0xFFF6F7FB);
  static const Color rangeSliderInactiveColor = Color(0xFFCCCCCC);
  static const Color blackD9 = Color(0xFFD9D9D9);
  static const Color dialogShadowColor = Color(0xFFFEEAEC);
  static const Color popupShadowColor = Color(0xFFFBD4D7);
  static final Color bottomSheetBarrierColor =
      const Color(0xFFD9D9D9).withOpacity(0.5);
  static final Color hiringItemShadowColor =
      const Color(0xFF000000).withOpacity(0.25);
  static const Color transparent = Color(0x00000000);
  static const Color statusCompleted = Color(0xFFC8FEA8);
  static const Color statusUpdating = Color(0xFFFFFEBE);
  static const Color statusOverdue = Color(0xFFF9BEC4);
  static const Color boxShadow = Color(0xffDDDDDD);

  /// *** Recommended Usage:
  /// Title texts, captions, input fields and everywhere else where black is required: CustomColor.black
  /// Secondary text: CustomColor.black[80]
  /// Inactive states: CustomColor.black[60]
  /// Default texts in text field: CustomColor.black[40]
  /// Dividers & borders, disabled states: CustomColor.black[20]
  /// Background color: CustomColor.black[10]
  /// Primary actions, buttons, border button and links: CustomColor.primary
  /// Error: CustomColor.error
  /// Warning: CustomColor.warning
  /// Success: CustomColor.success
}

class CustomTextStyle {
  /// Note: Sử dụng method .copyWith() khi muốn custom thêm, hoặc thay đổi các giá trị mặc định.
  /// Ví dụ: CustomTextStyle.body1.copyWith(color: CustomColor.primary)
  static const heading1 = TextStyle(
    color: CustomColor.black,
    fontSize: 32,
    height: 40 / 32,
    fontWeight: FontWeight.w600,
  );
  static const heading2 = TextStyle(
    color: CustomColor.black,
    fontSize: 32,
    height: 40 / 32,
    fontWeight: FontWeight.w400,
  );
  static const title1 = TextStyle(
    color: CustomColor.black,
    fontSize: 28,
    height: 32 / 28,
    fontWeight: FontWeight.w600,
  );
  static const title2 = TextStyle(
    color: CustomColor.black,
    fontSize: 20,
    height: 22 / 20,
    fontWeight: FontWeight.w600,
  );
  static const title3 = TextStyle(
    color: CustomColor.black,
    fontSize: 20,
    height: 24 / 20,
    fontWeight: FontWeight.w400,
  );
  static const title4 = TextStyle(
    color: CustomColor.black,
    fontSize: 16,
    height: 20 / 16,
    fontWeight: FontWeight.w400,
  );
  static const title5 = TextStyle(
    color: CustomColor.black,
    fontSize: 16,
    height: 24 / 16,
    fontWeight: FontWeight.w600,
  );
  static const body1 = TextStyle(
    color: CustomColor.black,
    fontSize: 18,
    height: 24 / 18,
    fontWeight: FontWeight.w700,
  );
  static const body2 = TextStyle(
    color: CustomColor.black,
    fontSize: 16,
    height: 22 / 16,
    fontWeight: FontWeight.w400,
  );
  static const footNote1 = TextStyle(
    color: CustomColor.black,
    fontSize: 14,
    height: 24 / 14,
    fontWeight: FontWeight.w600,
  );
  static const footNote2 = TextStyle(
    color: CustomColor.black,
    fontSize: 14,
    height: 22 / 14,
    fontWeight: FontWeight.w400,
  );
  static const caption1 = TextStyle(
    color: CustomColor.black,
    fontSize: 12,
    height: 16 / 12,
    fontWeight: FontWeight.w600,
  );
  static const caption2 = TextStyle(
    color: CustomColor.black,
    fontSize: 12,
    height: 16 / 12,
    fontWeight: FontWeight.w400,
  );
  static const caption3 = TextStyle(
    color: CustomColor.black,
    fontSize: 10,
    height: 14 / 10,
    fontWeight: FontWeight.w700,
  );
  static const link = TextStyle(
    color: CustomColor.black,
    fontSize: 16,
    height: 22 / 16,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
  );
}

class CustomOutlineBorder {
  //TODO: Customize your outline border here!
  static const focusedBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black54, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  );

  static const enabledBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black12, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  );

  static const errorBorder = OutlineInputBorder(
    borderSide: BorderSide(width: 3, color: Colors.redAccent),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  );

  static const inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    borderSide: BorderSide(color: Colors.redAccent),
  );

  static const focusedErrorBorder = OutlineInputBorder(
    borderSide: BorderSide(width: 3, color: Colors.redAccent),
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  );

  ///App Border
  static final primaryInputBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(0)),
    borderSide: BorderSide(
      width: 1,
      color: CustomColor.black[20]!,
    ),
  );

  static final primaryInputEnabledBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(0)),
    borderSide: BorderSide(
      width: 1,
      color: CustomColor.black[20]!,
    ),
  );

  static final primaryInputFocusedBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(0)),
    borderSide: BorderSide(
      width: 1,
      color: CustomColor.black[20]!,
    ),
  );

  static const primaryInputErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(0)),
    borderSide: BorderSide(
      width: 1,
      color: CustomColor.error,
    ),
  );

  static const primaryInputFocusedErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(0)),
    borderSide: BorderSide(
      width: 1,
      color: CustomColor.error,
    ),
  );

  static const primaryInputDisabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(0)),
    borderSide: BorderSide(
      width: 1,
      color: CustomColor.backgroundPrimary,
    ),
  );

  static final secondaryInputBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: CustomColor.black[10]!,
    ),
  );

  static final secondaryInputEnabledBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: CustomColor.black[10]!,
    ),
  );

  static final secondaryInputFocusedBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: CustomColor.black[10]!,
    ),
  );

  static const secondaryInputErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: CustomColor.error,
    ),
  );

  static const secondaryInputFocusedErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: CustomColor.error,
    ),
  );

  static final secondaryInputDisabledBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: CustomColor.black[20]!,
    ),
  );

  static final searchInputBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: CustomColor.black[20]!,
    ),
  );

  static final searchInputEnabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: CustomColor.black[20]!,
    ),
  );

  static final searchInputFocusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: CustomColor.black[20]!,
    ),
  );

  static const searchInputDisabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
      width: 1,
      color: CustomColor.backgroundPrimary,
    ),
  );
}
