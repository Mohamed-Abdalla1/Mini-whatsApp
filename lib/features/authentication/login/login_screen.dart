import 'package:flutter/material.dart';

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
                  child: TextFormField(
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    controller: countryNameController,
                    readOnly: true,
                    onTap: () {},
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.amber),
                      suffixIcon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.green,
                      ),
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
                      child: TextFormField(
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        controller: countryCodeController,
                        readOnly: true,
                        onTap: () {},
                        decoration: const InputDecoration(),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        controller: phoneNumberController,
                        onTap: () {},
                        decoration: const InputDecoration(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
