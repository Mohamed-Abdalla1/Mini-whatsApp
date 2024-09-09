import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mini_whatsapp/core/helper/send_code.dart';
import 'package:mini_whatsapp/features/authentication/login/otp/otp_Screen.dart';

class LoginRepoistory {
  final auth = FirebaseAuth.instance;

  static verifyWithPhoneNumber(FirebaseAuth auth, dynamic phoneNumberController,
      dynamic countryNameController, BuildContext context) {
    return auth.verifyPhoneNumber(
        phoneNumber: phoneNumberController.text,
        verificationCompleted: (phoneAuthCredential) {},
        codeAutoRetrievalTimeout: (verificationId) {
          log('Time Out');
        },
        codeSent: (verificationId, forceResendingToken) {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return OtpScreen(verificationId: verificationId);
            },
          ));
        },
        verificationFailed: (error) {
          sendCodeToPhone(
              context: context,
              countryNameController: countryNameController,
              phoneNumberController: phoneNumberController);
        });
  }

}
