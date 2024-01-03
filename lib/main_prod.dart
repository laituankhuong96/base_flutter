// import 'package:chucker_flutter/chucker_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:vcm360/core/app_theme.dart';
// import 'package:vcm360/di.dart';
// import 'package:vcm360/l10n/service/language_service.dart';
// import 'package:vcm360/router/app_pages.dart';
//
// import 'ConfigConstants.dart';
//
// void main() async {
//   Constants.setEnvironment(Environment.PROD);
//   ChuckerFlutter.showOnRelease = false;
//   WidgetsFlutterBinding.ensureInitialized();
//   await init();
//   runApp(const MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   final langService = getIt<LanguageService>();
//
//   @override
//   void initState() {
//     super.initState();
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       navigatorObservers: [ChuckerFlutter.navigatorObserver],
//       getPages: getPage.routes,
//       useInheritedMediaQuery: true,
//       debugShowCheckedModeBanner: false,
//       theme: AppTheme.lightAppTheme,
//       localizationsDelegates: AppLocalizations.localizationsDelegates,
//       supportedLocales: AppLocalizations.supportedLocales,
//       locale: langService.locale,
//       initialRoute: getPage.splash,
//     );
//   }
//
//   @override
//   void dispose() {
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//       DeviceOrientation.landscapeLeft,
//       DeviceOrientation.landscapeRight,
//     ]);
//     super.dispose();
//   }
// }
