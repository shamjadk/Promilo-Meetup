import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo_meetup/view/widgets/dots_indicator_widget.dart';

class DescriptionPageImageSliderWidget extends ConsumerWidget {
  const DescriptionPageImageSliderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 400,
      padding: const EdgeInsets.only(bottom: 12),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 209, 209, 209),
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(16), bottom: Radius.circular(8)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 350,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                final imageUrls = [
                  'https://www.shutterstock.com/image-photo/pair-sun-loungers-beach-umbrella-600nw-323287880.jpg',
                  'https://www.shutterstock.com/image-photo/beachside-tourism-landscape-luxurious-beach-600nw-2104948745.jpg',
                  'https://www.shutterstock.com/image-photo/pair-sun-loungers-beach-umbrella-600nw-323287880.jpg',
                  'https://www.shutterstock.com/image-photo/beachside-tourism-landscape-luxurious-beach-600nw-2104948745.jpg',
                  'https://www.shutterstock.com/image-photo/pair-sun-loungers-beach-umbrella-600nw-323287880.jpg',
                ];
                return Container(
                  padding: const EdgeInsets.all(8),
                  height: 350,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: NetworkImage(imageUrls[index]),
                          fit: BoxFit.cover)),
                  child: const Align(
                      alignment: Alignment.bottomCenter,
                      child: DotsIndicatorWidget()),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.file_download_outlined,
                size: 28,
                color: Colors.grey.shade700,
              ),
              Icon(
                Icons.bookmark_outline,
                size: 28,
                color: Colors.grey.shade700,
              ),
              Icon(
                Icons.favorite_outline,
                size: 28,
                color: Colors.grey.shade700,
              ),
              const Icon(
                Icons.filter_center_focus_outlined,
                size: 28,
                color: Colors.black,
              ),
              const Icon(
                Icons.star_outline,
                size: 28,
                color: Colors.black,
              ),
              InkWell(
                onTap: () async {},
                child: const Icon(
                  Icons.share_outlined,
                  size: 28,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
