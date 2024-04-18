import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:promilo_meetup/controller/provider/auth_provider.dart';
import 'package:promilo_meetup/core/theme/app_theme.dart';

class SubmitButtonWidget extends ConsumerWidget {
  final GlobalKey<FormState> formKey;
  final String email;
  final String password;
  final Color backgroundColor;
  const SubmitButtonWidget(
      {super.key,
      required this.formKey,
      required this.email,
      required this.password,
      required this.backgroundColor
      });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 60),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: AppTheme.button, width: 3),
          )),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          ref.read(authProvider.notifier).login(email, email, context);
        }
      },
      child: const Text(
        'Submit',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
