import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mini_whatsapp/core/common/custom_text_field.dart';
import 'package:mini_whatsapp/core/helper/show_country_code_picker.dart';
import 'package:mini_whatsapp/features/authentication/login/login_repo/login_repoistory.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController countryNameController =
      TextEditingController(text: 'Egypt');
  late TextEditingController countryCodeController;
  late TextEditingController phoneNumberController;

  @override
  void initState() {
    countryNameController = TextEditingController(text: 'Egypt');
    countryCodeController = TextEditingController(text: '+ 20');
    phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    countryCodeController.dispose();
    countryNameController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff11191b),
      appBar: AppBar(
        backgroundColor: const Color(0xff11191b),
        foregroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: const Text(' Enter Your Phone Number'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Center(
                  child: Text(
                    'WhatsApp will need to verify your phone number',
                    style: TextStyle(color: Colors.white54, fontSize: 12),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: CustomTextField(
                    onTap: () {
                      setState(() {
                        return showCountryCodePicker(context,
                            countryCodeController: countryCodeController,
                            countryNameController: countryNameController);
                      });
                    },
                    controller: countryNameController,
                    readOnly: true,
                    suffixIcon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.green,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                        width: 70,
                        child: CustomTextField(
                            controller: countryCodeController,
                            onTap: () {
                              setState(() {
                                return showCountryCodePicker(context,
                                    countryCodeController:
                                        countryCodeController,
                                    countryNameController:
                                        countryNameController);
                              });
                            },
                            readOnly: true)),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: CustomTextField(
                      onChanged: (value) {},
                      controller: phoneNumberController,
                      readOnly: false,
                      keyboardType: TextInputType.number,
                    )),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  try {
                    LoginRepoistory.verifyWithPhoneNumber(FirebaseAuth.instance,
                        phoneNumberController, countryNameController, context);
                  } on Exception catch (e) {
                    log(e.toString());
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// () => context.go(AppRouter.kOtpScreen)