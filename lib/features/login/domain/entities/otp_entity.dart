import 'package:flutter/foundation.dart' show immutable;

@immutable
class OtpEntity {
  const OtpEntity({
    required this.code,
  });

  final String code;
}
