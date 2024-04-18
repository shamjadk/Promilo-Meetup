import 'package:flutter/material.dart';
import 'package:promilo_meetup/controller/navigator_controller.dart';
import 'package:promilo_meetup/view/pages/description_page.dart';

class MeetupListWidget extends StatelessWidget {
  const MeetupListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Nav.navPush(context, const DescriptionPage());
                },
                child: Container(
                  width: 160,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://img.freepik.com/free-photo/people-taking-selfie-together-registration-day_23-2149096795.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(8)),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                        ),
                      ),
                      child: Center(
                          child: Text(
                        '0${index + 1}',
                        style: const TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
              ),
          separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
          itemCount: 5),
    );
  }
}
