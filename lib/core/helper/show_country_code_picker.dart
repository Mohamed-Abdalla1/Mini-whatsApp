import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

showCountryCodePicker(BuildContext context,
    {required TextEditingController countryNameController,
    required TextEditingController countryCodeController}) {
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
