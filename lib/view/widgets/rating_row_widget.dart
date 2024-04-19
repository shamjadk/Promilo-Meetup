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
          padding: const EdgeInsets.symmetric(horizontal: 4),
          height: 16,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: List.generate(5, (index) {
              int descendingIndex = 5 - index - 1;
              return Icon(
                Icons.star,
                size: 16,
                color: const Color.fromARGB(255, 39, 193, 201)
                    .withOpacity(descendingIndex / 5),
              );
            }),
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
