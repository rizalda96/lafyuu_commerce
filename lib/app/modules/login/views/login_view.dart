import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:lafyuu_ecommerce/app/contrants/colors.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(height: Get.width * .15),
          SvgPicture.asset('assets/logo/main_logo_blue.svg'),
          const SizedBox(height: 20),
          Column(
            children: const [
              Text(
                'Welcome to Lafyuu',
                style: TextStyle(
                  color: appBlue,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Sign in to continue',
                style: TextStyle(
                  color: appGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
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
          const SizedBox(height: 20),
          SizedBox(
            width: Get.width,
            child: ElevatedButton(
              onPressed: () => {},
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
                  "Sign in",
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
              Container(
                width: Get.width * .35,
                height: 1,
                color: appGrey,
                margin: EdgeInsets.only(right: Get.width * .05),
              ),
              const Text(
                'OR',
                style: TextStyle(
                  color: appGrey,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
              Container(
                width: Get.width * .35,
                height: 1,
                color: appGrey,
                margin: EdgeInsets.only(left: Get.width * .05),
              ),
            ],
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () => {},
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SvgPicture.asset('assets/logo/google.svg'),
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      'Login with Google',
                      style: TextStyle(
                        color: appGrey,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            onPressed: () => {},
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SvgPicture.asset('assets/logo/facebook.svg'),
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      'Login with Facebook',
                      style: TextStyle(
                        color: appGrey,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: appBlueSoft,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Don’t have a account? ',
                    style: TextStyle(
                      color: appGrey,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Register',
                    style: TextStyle(
                      color: appBlueSoft,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
