import 'package:flutter/material.dart';
import 'package:promilo_meetup/view/widgets/description_page_image_slider_widget.dart';
import 'package:promilo_meetup/view/widgets/description_widget.dart';
import 'package:promilo_meetup/view/widgets/rating_row_widget.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('Description'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DescriptionPageImageSliderWidget(),
              SizedBox(
                height: 8,
              ),
              RatingRowWidget(),
              SizedBox(
                height: 16,
              ),
              DescriptionWidget()
            ],
          ),
        ),
      ),
    );
  }
}
