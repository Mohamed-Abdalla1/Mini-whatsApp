import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_whatsapp/core/utils/app_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff11191b),
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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: const ButtonStyle(
                      foregroundColor: WidgetStatePropertyAll(Colors.black),
                      backgroundColor:
                          WidgetStatePropertyAll(Color(0xff008566)),
                    ),
                    onPressed: () => context.go(AppRouter.kLoginScreen),
                    child: const Text('Agree And Continue')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
