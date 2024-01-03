import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class AppRoutes {
  String get splash;

  String get login;

  String get home;

  String get internalRecruit;

  String get recruitPostDetail;

  String get recruitProfile;

  String get viewViettel;

  String get feedbackPost;

  List<GetPage> get routes;
}
