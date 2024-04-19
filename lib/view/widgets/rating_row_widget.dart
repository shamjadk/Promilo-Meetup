import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo_meetup/core/theme/app_theme.dart';

class RatingRowWidget extends ConsumerWidget {
  const RatingRowWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        const Icon(
          Icons.bookmark_outline,
          size: 16,
          color: AppTheme.button,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          '1034',
          style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          width: 8,
        ),
        const Icon(
          Icons.favorite_outline,
          size: 16,
          color: AppTheme.button,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          '1034',
          style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          height: 16,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: List.generate(5, (index) => rating(index)),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        const Text(
          '3.2',
          style: TextStyle(color: AppTheme.button, fontSize: 12),
        )
      ],
    );
  }
}

Widget rating(int index) {
  final opacity = (1.0 - (index / 5)).clamp(0.0, 1.0);
  final color =
      index == 5 ? Colors.white : const Color.fromARGB(255, 54, 199, 209);

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 2),
    child: Icon(
      Icons.star,
      color: color.withOpacity(opacity),
      size: 14,
    ),
  );
}
