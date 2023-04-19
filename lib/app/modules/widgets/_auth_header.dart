import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:lafyuu_ecommerce/app/contrants/colors.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    Key? key,
    required this.titleHeader,
    required this.subTitleHeader,
  }) : super(key: key);

  final String titleHeader;
  final String subTitleHeader;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Get.width * .15),
        SvgPicture.asset('assets/logo/main_logo_blue.svg'),
        const SizedBox(height: 20),
        Column(
          children: [
            Text(
              titleHeader,
              style: const TextStyle(
                color: appBlue,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              subTitleHeader,
              style: const TextStyle(
                color: appGrey,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
