import 'package:flutter/material.dart';
import 'package:mini_whatsapp/core/common/custom_text_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late TextEditingController codeController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff11191b),
      appBar: AppBar(
        title: const Text(
          'Verifying Your Number',
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: const Color(0xff11191b),
        foregroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
           const Center(
              child: Text(
                'We have sent an SMS with your code',
                style: TextStyle(color: Colors.white54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: CustomTextField(
                controller: codeController,
                readOnly: false,
                hintText: ' -  -  -  -  -  -  ',
                fontSize: 30,
                keyboardType: TextInputType.number,
              ),
            )
          ],
        ),
      ),
    );
  }
}
