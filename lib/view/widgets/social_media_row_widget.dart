import 'package:flutter/material.dart';

class SocialMediaRowWidget extends StatelessWidget {
  const SocialMediaRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialMediaIconWidget(path: 'assets/icons/ic_google.png'),
        SocialMediaIconWidget(path: 'assets/icons/ic_linkedin.png'),
        SocialMediaIconWidget(path: 'assets/icons/ic_facebook.png'),
        SocialMediaIconWidget(path: 'assets/icons/ic_instagram.png'),
        SocialMediaIconWidget(path: 'assets/icons/ic_whatsapp.png'),
      ],
    );
  }
}

class SocialMediaIconWidget extends StatelessWidget {
  final String path;
  const SocialMediaIconWidget({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Image.asset(
        path,
        width: 32,
      ),
    );
  }
}
