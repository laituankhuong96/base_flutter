import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vcm360/core/app_style.dart';
import 'package:vcm360/features/login/data/datasources/datalocal/user_sharePref.dart';
import 'package:vcm360/gen/assets.gen.dart';
import 'package:vcm360/router/app_pages.dart';

import '../../../../common/network/dio_client.dart';
import '../../../../di.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () => checkUserLogin());
    super.initState();
  }

  Future<void> checkUserLogin() async {
    bool isKeepLogin = await UserSharePref.getInstance().isKeepLogin();
    if (isKeepLogin) {
      final dioClient = getIt<DioClient>();
      String tok = await UserSharePref.getInstance().getToken() ?? '';
      final i4User = await UserSharePref.getInstance().getUserLogin();
      dioClient.dio.options.headers['Authorization'] = tok;
      Get.offNamed(getPage.home, arguments: i4User);
    } else {
      Get.offNamed(getPage.login);
    }
  }

  @override
  void didUpdateWidget(covariant SplashScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: CustomColor.primary[10],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 241,
              height: 94,
              child: Image.asset(
                Assets.images.imgLogoViettelRedPng.path,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
