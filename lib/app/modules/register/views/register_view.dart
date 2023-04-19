import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lafyuu_ecommerce/app/contrants/colors.dart';
import 'package:lafyuu_ecommerce/app/modules/widgets/_auth_header.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const AuthHeader(
            titleHeader: 'Let’s Get Started',
            subTitleHeader: 'Create an new account',
          ),
          const SizedBox(height: 40),
          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: appBlue,
                ),
              ),
              hintText: 'Full Name',
              hintStyle: const TextStyle(
                color: appGrey,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 20,
              ),
              prefixIcon: const Icon(
                Icons.account_circle_outlined,
                color: appGrey,
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: appBlue,
                ),
              ),
              hintText: 'Your Email',
              hintStyle: const TextStyle(
                color: appGrey,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 20,
              ),
              prefixIcon: const Icon(
                Icons.mail_outline,
                color: appGrey,
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: appBlue,
                ),
              ),
              hintText: 'Password',
              hintStyle: const TextStyle(
                color: appGrey,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 20,
              ),
              prefixIcon: const Icon(
                Icons.lock_outlined,
                color: appGrey,
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: appBlue,
                ),
              ),
              hintText: 'Password Again',
              hintStyle: const TextStyle(
                color: appGrey,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 20,
              ),
              prefixIcon: const Icon(
                Icons.lock_outlined,
                color: appGrey,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: Get.width,
            child: ElevatedButton(
              onPressed: () => Get.back(),
              style: ElevatedButton.styleFrom(
                shadowColor: appBlueSoft,
                backgroundColor: appBlueSoft,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'have a account? ',
                style: TextStyle(
                  color: appGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
              InkWell(
                onTap: () => Get.back(),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    color: appBlueSoft,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
