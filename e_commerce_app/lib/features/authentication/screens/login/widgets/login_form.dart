import 'package:e_commerce_app/features/authentication/screens/password_configurations/forgot_password.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          ///Password
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),

          /// remember me and forgot pass word button

          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                /// remeber me
                Checkbox(value: true, onChanged: (value) {}),
                const Text(TTexts.rememberMe),
              ],
            ),

            /// Forgot Password
            TextButton(
                onPressed: () => Get.off(() => const ForgotPassword()),
                child: const Text(TTexts.forgetPassword))
          ]),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          /// Sign In Button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const NavigationMenu()),
                  child: const Text(TTexts.signIn))),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          /// Create-Account Button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const SignUpScreen()),
                  child: const Text(TTexts.createAccount))),
        ],
      ),
    ));
  }
}
