import 'package:flutter/material.dart';
import 'package:promilo_meetup/core/theme/app_theme.dart';
import 'package:promilo_meetup/view/widgets/home_page_image_slider_widget.dart';
import 'package:promilo_meetup/view/widgets/meetup_list_widget.dart';
import 'package:promilo_meetup/view/widgets/people_card_widget.dart';
import 'package:promilo_meetup/view/widgets/search_field_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 24,
        title: const Text(
          'Individual Meetup',
          style: TextStyle(color: AppTheme.text, fontWeight: FontWeight.w500),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchFieldWidget(),
              SizedBox(
                height: 16,
              ),
              HomePageImageSliderWidget(),
              Text(
                'Trending Popular People',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: AppTheme.text),
              ),
              SizedBox(
                height: 8,
              ),
              PeopleCardWidget(),
              Text(
                'Top Trending Meetups',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: AppTheme.text),
              ),
              SizedBox(
                height: 8,
              ),
              MeetupListWidget()
            ],
          ),
        ),
      ),
    );
  }
}
