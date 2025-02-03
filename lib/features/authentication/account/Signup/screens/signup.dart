import 'package:cab_co19/common/styles/inputfiled_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';

import '../../../../../common/styles/spacing_styles.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                    width: TSizes.sm,
                  ),
                  Text(
                    TTexts.signup,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(
                    width: TSizes.sm,
                  ),
                  Lottie.asset(TImages.welcome_lottie,
                      height: 80, repeat: true, fit: BoxFit.cover),
                ],
              ),
              /* Lottie.asset( TImages.bubbles_lottie,
                height: 80,
                repeat: true,
                fit: BoxFit.cover

            ),*/

              const SizedBox(
                width: TSizes.xl,
              ),
              Text(
                TTexts.signup_tagline,
                style: Theme.of(context).textTheme.labelMedium,
              ),

              const SizedBox(
                height: TSizes.xl,
              ),

              /// Form

              Form(
                child: Column(
                  children: [
                    /// Full Name
                    TextFormField(
                      style: TInputFieldText.textStyleInputFields,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.personalcard),
                        labelText: TTexts.signup_fullname,
                      ),
                    ),

                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),

                    /// Email
                    TextFormField(
                      style: TInputFieldText.textStyleInputFields,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.message),
                        labelText: TTexts.signup_emailid,
                      ),
                    ),

                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),

                    /// Phone
                    TextFormField(
                      style: TInputFieldText.textStyleInputFields,
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.call),
                        labelText: TTexts.signup_phone,
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
                    Text(
                      TTexts.signup_referal,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    const SizedBox(
                      height: TSizes.sm,
                    ),
                    Text(
                      TTexts.signup_privacy,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),

                    const SizedBox(
                      height: TSizes.xl,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          onPressed: () {
                            //  Get.to(const LoginScreen());
                          },
                          child: Text(
                            TTexts.signup_otp,
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
