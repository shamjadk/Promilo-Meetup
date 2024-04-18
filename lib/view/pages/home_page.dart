import 'package:flutter/material.dart';
import 'package:promilo_meetup/core/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Individual Meetup',
          style: TextStyle(color: AppTheme.text),
        ),
      ),
    );
  }
}
