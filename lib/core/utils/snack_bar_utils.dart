import 'package:flutter/material.dart';

   void showSnackBar(BuildContext context, String message, bool isError) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: isError ? Colors.red : Colors.green,
        margin: const EdgeInsets.all(24),
        behavior: SnackBarBehavior.floating,
        content: Text(message)));
  
}
