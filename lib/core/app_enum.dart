import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:vcm360/core/app_extension.dart';

enum PostStatus { completed, inProgress, overdue, rejected, waiting }

enum PostType {
  CONTRIBUTION('CONTRIBUTION'),
  REFLECTION('REFLECTION');

  final String key;

  const PostType(this.key);

  static String getTitle(BuildContext context, String type) {
    if (type.toUpperCase() == CONTRIBUTION.key) {
      return context.l10n.contribution;
    } else {
      return context.l10n.reflection;
    }
  }

  static String toPostEnum(BuildContext context, String s) {
    if (s == context.l10n.contribution) {
      return PostType.CONTRIBUTION.name;
    } else {
      return PostType.REFLECTION.name;
    }
  }
}

enum SalaryRecruit {
  max(100000000),
  min(0.0),
  salaryFrom(20000000.0),
  salaryTo(50000000.0);

  final double value;

  const SalaryRecruit(this.value);
}

enum TypeFile {
  isVideo,
  isImage,
  isAudio,
  isPdf,
  isPpt,
  isDoc,
  isExcel,
  isUnknown;

  static TypeFile checkTypeFile(String filePath) {
    String extension = path.extension(filePath).toLowerCase();
    if (extension == '.jpg' ||
        extension == '.jpeg' ||
        extension == '.png' ||
        extension == '.gif' ||
        extension == '.webp') {
      return TypeFile.isImage;
    } else if (extension == '.mp4' ||
        extension == '.avi' ||
        extension == '.mov' ||
        extension == '.wmv' ||
        extension == '.flv' ||
        extension == '.mkv') {
      return TypeFile.isVideo;
    } else if (extension == '.doc' ||
        extension == '.docx' ||
        extension == '.odt' ||
        extension == '.rtf') {
      return TypeFile.isDoc;
    } else if (extension == '.pdf') {
      return TypeFile.isPdf;
    } else if (extension == '.ppt' || extension == '.pptx') {
      return TypeFile.isPpt;
    } else if (extension == '.xls' ||
        extension == '.xlsx' ||
        extension == '.ods' ||
        extension == '.csv') {
      return TypeFile.isExcel;
    } else if (extension == '.mp3') {
      return TypeFile.isAudio;
    } else {
      return TypeFile.isUnknown;
    }
  }
}

enum DataSourceType { asset, network, file, contentUri, unknown }

enum NetworkSpeedType { veryFast, fast, slow }

enum RecruitType {
  AllTIME("ALLTIME"),
  PART_TIME("PART_TIME");

  final String key;

  const RecruitType(this.key);

  static String getWorkingForm(BuildContext context, String type) {
    if (type.toUpperCase() == AllTIME.key) {
      return context.l10n.allTime;
    } else {
      return context.l10n.partTime;
    }
  }
}

enum GeneralType {
  option,
  male,
  female,
  other;

  static String enumToString(BuildContext context, GeneralType type) {
    if (type == male) {
      return context.l10n.male;
    } else if (type == female) {
      return context.l10n.female;
    } else if (type == other) {
      return context.l10n.other;
    } else {
      return context.l10n.choice;
    }
  }

  static String stringToEnum(String str, BuildContext context) {
    if (str == context.l10n.male) {
      return male.name.toUpperCase();
    } else if (str == context.l10n.female) {
      return female.name.toUpperCase();
    } else if (str == context.l10n.other) {
      return other.name.toUpperCase();
    } else {
      return "";
    }
  }
}

enum ClassifyType { all, contribution, reflection }

enum ArrangeType { latest, mostVotes }

enum SortType { desc, asc }

enum SortFiled { createdAt, numberOfLikes }
