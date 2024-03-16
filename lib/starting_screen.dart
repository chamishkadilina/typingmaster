import 'package:flutter/material.dart';
import 'package:typingmaster/constants.dart';
import 'package:typingmaster/practice_screen.dart';
import 'package:typingmaster/reusable_card.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kBackgroundStartColor,
              kBackgroundEndColor,
            ],
            begin: kStartBeginAlign,
            end: kStartEndAlign,
          ),
        ),
        child: Padding(
          padding: kStartingScreenPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 240,
                child: ReusableCard(
                    borderRadius: kborderRadius,
                    cardChild: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              'Instructions',
                              style: kTitleTextStyle,
                            ),
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                height: 200,
                                width: 200,
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
              const SizedBox(
                height: 150,
              ),
              Expanded(
                flex: 40,
                child: ReusableCard(
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PracticeScreen(),
                      ),
                    );
                  },
                  borderRadius: kRoundedBorder,
                  cardChild: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'Start Practice ',
                          style: kTitleTextStyle,
                        ),
                      ),
                      Icon(
                        kcardIcon,
                        color: kIconColor,
                        size: kIconSize,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Expanded(
                flex: kNavigationBarFlex,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(90),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
