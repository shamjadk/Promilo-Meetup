import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo_meetup/core/theme/app_theme.dart';

final imageProvider = StateProvider<int>((ref) => 0);

class HomePageImageSliderWidget extends ConsumerWidget {
  const HomePageImageSliderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentIndex = ref.read(imageProvider);
    final pageController = PageController(initialPage: currentIndex);

    final List<String> imageUrls = [
      'https://www.raah.org.in/wp-content/uploads/2019/09/brainstorming-chatting-communicating-2962135-1-1024x574.jpg',
      'https://s39613.pcdn.co/wp-content/uploads/2019/06/rights-and-responsibilities-for-group-members-062819-2.jpg',
      'https://www.marketing91.com/wp-content/uploads/2021/02/What-is-Group.jpg',
    ];
    return SizedBox(
      height: 250,
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (index) => currentIndex = index,
              itemCount: imageUrls.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(
                            imageUrls[index],
                          ),
                          fit: BoxFit.cover,
                        )),
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.black54, Colors.transparent]),
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(8))),
                      child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Popular meetups\nin India',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ));
              },
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              imageUrls.length,
              (index) => InkWell(
                onTap: () {
                  pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.ease,
                  );
                  ref.read(imageProvider.notifier).state = index;
                },
                child: DotsIndicator(
                  dotsCount: 1,
                  position: 0,
                  decorator: DotsDecorator(
                    color: AppTheme.text,
                    spacing: const EdgeInsets.all(4),
                    activeColor:
                        index == currentIndex ? AppTheme.text : Colors.grey,
                    size: const Size.square(10),
                    activeSize: const Size(10, 10),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
