import 'package:flutter/material.dart';
import 'package:promilo_meetup/core/theme/app_theme.dart';

class SubmitButtonWidget extends StatelessWidget {
  const SubmitButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 60),
          backgroundColor: AppTheme.submitBtn,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: AppTheme.button, width: 3),
          )),
      onPressed: () {},
      child: const Text(
        'Submit',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
