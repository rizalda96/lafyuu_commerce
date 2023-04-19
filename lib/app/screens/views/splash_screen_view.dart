import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lafyuu_ecommerce/app/contrants/colors.dart';

class SplashScreenView extends GetView {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              width: Get.width,
              height: Get.height,
              color: appBlueSoft,
            ),
            Center(
              child: SvgPicture.asset(
                'assets/logo/main_logo.svg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
