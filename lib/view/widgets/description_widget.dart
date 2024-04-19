import 'package:flutter/material.dart';
import 'package:promilo_meetup/core/theme/app_theme.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Actor Name',
          style: TextStyle(color: AppTheme.text, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          'Indian Actress',
          style: TextStyle(color: Colors.grey.shade600, fontSize: 11),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Icon(
              Icons.access_time,
              color: Colors.grey.shade600,
              size: 16,
            ),
            const SizedBox(width: 8),
            Text('Duration 20 Mins',
                style: TextStyle(color: Colors.grey.shade600, fontSize: 11)),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Icon(
              Icons.wallet,
              color: Colors.grey.shade600,
              size: 16,
            ),
            const SizedBox(width: 8),
            Text('Total Average Fees ₹9999',
                style: TextStyle(color: Colors.grey.shade600, fontSize: 11)),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          textAlign: TextAlign.justify,
          'From cardiovasclar health to fitness, flexibility, balance, stress relief, better sleep, increased cognitive performance, and more, you can reap all of these benefits in just one session out on the waves. So, you may find yourself wondering ehat are the benefits of going on a surf camp.',
          style: TextStyle(color: Colors.grey.shade600, fontSize: 11),
        ),
        const SizedBox(
          height: 8,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: TextButton(
              style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
              onPressed: () {},
              child: const Text(
                'See More',
                style: TextStyle(color: AppTheme.button),
              )),
        )
      ],
    );
  }
}
