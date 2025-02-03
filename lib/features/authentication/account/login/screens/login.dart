import 'dart:ui';

import 'package:cab_co19/common/styles/spacing_styles.dart';
import 'package:cab_co19/features/authentication/account/google%20auth/google_auth_button.dart';
import 'package:cab_co19/features/dashboard/screen/dashboard_screen.dart';
import 'package:cab_co19/utils/constants/image_strings.dart';
import 'package:cab_co19/utils/constants/sizes.dart';
import 'package:cab_co19/utils/constants/text_strings.dart';
import 'package:cab_co19/utils/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';

import '../../../../../common/styles/inputfiled_text_style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithoutAppBarHeight,
          child: Column(
            children: [
              /// Custom Appbar

              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(Iconsax.arrow_circle_left)),
                  const SizedBox(
                    width: TSizes.xl,
                  ),
                  Text(
                    TTexts.login,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ],
              ),
              const SizedBox(
                width: TSizes.xl,
              ),
              Text(
                TTexts.login_tag,
                style: Theme.of(context).textTheme.labelMedium,
              ),

              ///Logo, Title & Sub-Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Lottie.asset(TImages.welcome_lottie,
                        height: 150, repeat: true, fit: BoxFit.cover),
                  ),
                  Text(TTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(
                    height: TSizes.sm,
                  ),
                  //  Text(TTexts.loginSubTitle,style: Theme.of(context).textTheme.labelMedium),
                  const SizedBox(
                    height: TSizes.xl,
                  ),
                ],
              ),

              /// Form

              Form(
                child: Column(
                  children: [
                    /// Email
                    TextFormField(
                      style: TInputFieldText.textStyleInputFields,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: TTexts.email,
                      ),
                    ),

                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),

                    /// Password
                    TextFormField(
                      style: TInputFieldText.textStyleInputFields,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: TTexts.password,
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),

                    const SizedBox(
                      height: TSizes.xl,
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          TTexts.login_forgot_password,
                          style: Theme.of(context).textTheme.labelMedium,
                        )),
                    const SizedBox(
                      height: TSizes.xl,
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          TTexts.login_newuser_account,
                          style: Theme.of(context).textTheme.labelMedium,
                        )),

                    const SizedBox(
                      height: TSizes.xl,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(const Dashboard());
                          },
                          child: Text(
                            TTexts.login_btn_lable,
                            style: Theme.of(context).textTheme.bodyLarge,
                          )),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: TSizes.xl,
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
