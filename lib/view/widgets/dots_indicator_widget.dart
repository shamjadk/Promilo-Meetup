import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DotsIndicatorWidget extends ConsumerWidget {
  const DotsIndicatorWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DotsIndicator(
      dotsCount: 5,
      position: 0,
      decorator: const DotsDecorator(
        spacing: EdgeInsets.all(4),
        color: Colors.grey,
        activeColor: Colors.white,
        size: Size.square(10),
        activeSize: Size(10, 10),
      ),
    );
  }
}
