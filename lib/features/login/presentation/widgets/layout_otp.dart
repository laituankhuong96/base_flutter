// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:vcm360/common/widget/custom_primary_button.dart';
// import 'package:vcm360/core/app_extension.dart';
// import 'package:vcm360/core/app_style.dart';
// import 'package:vcm360/router/app_pages.dart';
//
// class LayoutOtp extends StatefulWidget {
//   const LayoutOtp({Key? key}) : super(key: key);
//
//   @override
//   State<LayoutOtp> createState() => _LayoutOtpState();
// }
//
// class _LayoutOtpState extends State<LayoutOtp> with WidgetsBindingObserver {
//   final _keyContainer = GlobalKey();
//   final List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());
//   final List<TextEditingController> controllersOTP =
//       List.generate(6, (index) => TextEditingController());
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(15),
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(15)),
//         color: CustomColor.backgroundPrimary,
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           _title(),
//           _inputText(),
//           _resentOtp(),
//           _btnLogin(),
//         ],
//       ),
//     );
//   }
//
//   Widget _title() {
//     final l10n = context.l10n;
//     return Column(
//       children: [
//         Text(
//           l10n.login_otp_title,
//           style: CustomTextStyle.title1,
//         ),
//         const SizedBox(height: 15),
//         Text(
//           l10n.login_otp_subTitle,
//           maxLines: 2,
//           textAlign: TextAlign.center,
//           style: CustomTextStyle.title4,
//         ),
//       ],
//     );
//   }
//
//   Widget _inputText() {
//     // final withInput = getSize(_keyContainer).width / 8;
//     const withInput = 36.0;
//     return Container(
//       key: _keyContainer,
//       width: double.infinity,
//       height: 50,
//       margin: const EdgeInsets.only(top: 30),
//       child: Form(
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: List.generate(
//             6,
//             (index) => Container(
//               margin: const EdgeInsets.symmetric(horizontal: 2.5),
//               width: withInput,
//               child: TextFormField(
//                 controller: controllersOTP[index],
//                 style: Theme.of(context).textTheme.headlineSmall,
//                 keyboardType: TextInputType.number,
//                 inputFormatters: [
//                   LengthLimitingTextInputFormatter(1),
//                 ],
//                 textAlign: TextAlign.center,
//                 decoration: const InputDecoration(
//                   contentPadding: EdgeInsets.all(0),
//                 ),
//                 onChanged: (value) {
//                   if (value.length == 1 && index < 5) {
//                     FocusScope.of(context).nextFocus();
//                   } else if (value.isEmpty) {
//                     FocusScope.of(context).previousFocus();
//                   }
//                 },
//                 textInputAction: TextInputAction.previous,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _resentOtp() {
//     final l10n = context.l10n;
//     return Container(
//       margin: const EdgeInsets.only(top: 5),
//       child: RichText(
//         text: TextSpan(
//           style: CustomTextStyle.caption2,
//           children: [
//             TextSpan(text: l10n.login_otp_resentOtpIn),
//             TextSpan(
//               text: '\t25s',
//               style: CustomTextStyle.caption2.copyWith(
//                 color: CustomColor.primary,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _btnLogin() {
//     final l10n = context.l10n;
//     return Container(
//       padding: const EdgeInsets.only(top: 36),
//       child: CustomPrimaryButton(
//         buttonLabel: l10n.loginTitle,
//         onTap: () {
//           Get.offAllNamed(getPage.home);
//         },
//       ),
//     );
//   }
//
//   @override
//   void activate() {
//     super.activate();
//   }
//
//   @override
//   void deactivate() {
//     super.deactivate();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _keyContainer.currentState?.dispose();
//     for (var focusNode in focusNodes) {
//       focusNode.dispose();
//     }
//     for (var controller in controllersOTP) {
//       controller.dispose();
//     }
//   }
//
//   Size getSize(GlobalKey key) {
//     final renderBox = key.currentContext?.findRenderObject() as RenderBox?;
//     final size = renderBox?.size;
//     if (size != null) {
//       return size;
//     }
//     return Size.zero;
//   }
// }
