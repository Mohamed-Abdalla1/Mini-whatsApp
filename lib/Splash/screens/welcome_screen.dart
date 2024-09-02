import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff11191b),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 150.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Welcome to WhatsApp',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Image.asset(
                  width: double.infinity,
                  'assets/WhatsApp Image 2024-09-01 at 9.34.04 PM.jpeg'),
              const SizedBox(
                height: 50,
              ),
              const Text(
                textAlign: TextAlign.center,
                'Read Our Privacy Policy . Tap "agree and continue " To Accept The Terms Of Service ',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.zero),
                    border: Border.all(style: BorderStyle.none)),
                child: ElevatedButton(
                    style: const ButtonStyle(
                      foregroundColor: WidgetStatePropertyAll(Colors.white),
                      backgroundColor:
                          WidgetStatePropertyAll(Color(0xff008566)),
                    ),
                    onPressed: () {},
                    child: const Text('Agree And Continue')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
