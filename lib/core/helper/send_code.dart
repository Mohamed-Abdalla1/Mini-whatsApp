import 'package:flutter/material.dart';
import 'package:mini_whatsapp/core/helper/show_alert_dialog.dart';

sendCodeToPhone(
    {error,
    dynamic phoneNumberController,
    dynamic countryNameController,
    required BuildContext context}) {
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
  }
}
