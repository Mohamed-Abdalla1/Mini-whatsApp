import 'package:flutter/material.dart';

showAlertDialog({
  required BuildContext context,
  required String message,
  String? btnText,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(
          message,
          style: const TextStyle(color: Colors.grey, fontSize: 15),
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 0, 0),
        actions: [
          TextButton(onPressed: (){}, child:Text(
             btnText ?? 'OK',
             
          ))
        ],
      );
    },
  );
}
