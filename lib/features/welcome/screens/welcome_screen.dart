import 'package:cab_app/features/authentication/account/Signup/screens/signup.dart';
import 'package:cab_app/features/authentication/account/google%20auth/google_auth_button.dart';
import 'package:cab_app/utils/constants/image_strings.dart';
import 'package:cab_app/utils/device/device.dart';
import 'package:cab_app/utils/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../common/styles/spacing_styles.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../authentication/account/login/screens/login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo, Title & Sub-Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(TTexts.welcome,
                      style: Theme.of(context).textTheme.headlineLarge),
                  const SizedBox(
                    height: TSizes.sm,
                  ),
                  Text(TTexts.welcome_tagline,
                      style: Theme.of(context).textTheme.labelLarge),
                  const SizedBox(
                    height: TSizes.sm,
                  ),
                  Text(TTexts.welcome_sub_tagline,
                      style: Theme.of(context).textTheme.labelMedium),
                  const Gap(TSizes.lg),
                  Center(
                    child: Lottie.asset(TImages.welcome_lottie,
                        height: 180, repeat: true, fit: BoxFit.cover),
                  ),
                  const Gap(TSizes.lg),
                  Text(TTexts.welcome_login_labels,
                      style: Theme.of(context).textTheme.labelMedium),
                  const SizedBox(
                    height: TSizes.sm,
                  ),
                  Text(TTexts.welcome_signup_labels,
                      style: Theme.of(context).textTheme.labelMedium),
                  const Gap(TSizes.lg),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(const LoginScreen());
                        },
                        child: Text(
                          TTexts.welcome_login_btn,
                          style: Theme.of(context).textTheme.bodyLarge,
                        )),
                  ),
                  const Gap(TSizes.lg),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(const SignUpScreen());
                        },
                        child: Text(
                          TTexts.welcome_signup_btn,
                          style: Theme.of(context).textTheme.bodyLarge,
                        )),
                  ),
                ],
              ),
              const Gap(TSizes.lg),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(text: "OR"),
                ],
              ),
              const Gap(TSizes.lg),
              const GoogleSignInButton(),
              const SizedBox(
                height: TSizes.sm,
              ),

              /// Copyright brand
              Container(
                  alignment: Alignment.bottomCenter,
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    TTexts.brand_name,
                    style: Theme.of(context).textTheme.labelSmall,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
