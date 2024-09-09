import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_whatsapp/core/common/custom_text_field.dart';
import 'package:mini_whatsapp/core/helper/show_alert_dialog.dart';
import 'package:mini_whatsapp/core/utils/app_router.dart';

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

  showCountryCodePicker() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      favorite: ['ET'],
      countryListTheme: CountryListThemeData(
        flagSize: 20,
        bottomSheetHeight: 600,
        backgroundColor: const Color(0xff11191b),
        borderRadius: BorderRadius.circular(20),
        textStyle: const TextStyle(color: Colors.grey),
        inputDecoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.grey),
          prefixIcon: const Icon(
            Icons.language,
            color: Color.fromARGB(255, 6, 151, 11),
          ),
          hintText: 'Search Country Code',
          hintStyle: const TextStyle(color: Colors.white54),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.1))),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.green)),
        ),
      ),
      onSelect: (country) {
        countryNameController.text = country.name;
        countryCodeController.text = country.countryCode;
      },
    );
  }

  sendCodeToPhone() {
    final phone = phoneNumberController.text;
    final countryName = countryNameController.text;

    if (phone.isEmpty) {
      return showAlertDialog(
          context: context, message: 'Please Enter Phone Number');
    } else if (phone.length < 9) {
      return showAlertDialog(
          context: context,
          message:
              'The phone number eneterd is too short for the country $countryName');
    } else if (phone.length > 13) {
      return showAlertDialog(
          context: context,
          message:
              'The phone number eneterd is too long for the country $countryName');
    } else {
      context.go(AppRouter.kOtpScreen);
    }
  }

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
                    onTap: showCountryCodePicker,
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
                            onTap: showCountryCodePicker,
                            controller: countryCodeController,
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
                onPressed: sendCodeToPhone,
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