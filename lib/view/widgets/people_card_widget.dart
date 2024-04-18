import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:promilo_meetup/core/theme/app_theme.dart';

class PeopleCardWidget extends ConsumerWidget {
  const PeopleCardWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 184,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    width: 290,
                    height: 160,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 58,
                          child: ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            leading: Container(
                              width: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: AppTheme.text)),
                              child: Center(
                                child: Image.asset(
                                  'assets/icons/ic_leaf.png',
                                  width: 24,
                                  color: AppTheme.text,
                                ),
                              ),
                            ),
                            horizontalTitleGap: 8,
                            minVerticalPadding: 0,
                            title: const Text(
                              'Author',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppTheme.text,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: const Text(
                              '1,028 Meetups',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        const Divider(),
                        const Expanded(child: Text('')),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              width: 90,
                              height: 30,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      padding: const MaterialStatePropertyAll(
                                          EdgeInsets.all(0)),
                                      backgroundColor:
                                          const MaterialStatePropertyAll(
                                              AppTheme.button),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)))),
                                  onPressed: null,
                                  child: const Text(
                                    'See more',
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    left: 8,
                    top: 76,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-photo/people-taking-selfie-together-registration-day_23-2149096795.jpg'),
                    ),
                  ),
                  const Positioned(
                    left: 38,
                    top: 76,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://assets.weforum.org/article/image/XaHpf_z51huQS_JPHs-jkPhBp0dLlxFJwt-sPLpGJB0.jpg'),
                    ),
                  ),
                  const Positioned(
                    left: 68,
                    top: 76,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-photo/people-taking-selfie-together-registration-day_23-2149096795.jpg'),
                    ),
                  ),
                  const Positioned(
                    left: 98,
                    top: 76,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://assets.weforum.org/article/image/XaHpf_z51huQS_JPHs-jkPhBp0dLlxFJwt-sPLpGJB0.jpg'),
                    ),
                  ),
                  const Positioned(
                    left: 130,
                    top: 76,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-photo/people-taking-selfie-together-registration-day_23-2149096795.jpg'),
                    ),
                  ),
                ],
              ),
          separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
          itemCount: 3),
    );
  }
}
