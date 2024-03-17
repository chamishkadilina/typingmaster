import 'package:flutter/material.dart';
import 'package:typingmaster/card_content.dart';
import 'package:typingmaster/constants.dart';
import 'package:typingmaster/practice_screen.dart';
import 'package:typingmaster/reusable_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kBackgroundStartColor,
              kBackgroundEndColor,
            ],
            begin: kHomeBeginAlign,
            end: kHomeEndAlign,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: kHomeScreenPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  flex: kKeyboardImageFlex,
                  child: Stack(
                    children: [
                      Center(
                        child: Image(
                          image: AssetImage('assets/images/welcomeImage.png'),
                        ),
                      ),
                      Text(
                        'Ready TO Type Like A Pro?\nStart Here!',
                        style: kTitleTextStyle,
                      )
                    ],
                  ),
                ),
                const Expanded(
                  flex: kChooseModeFlex,
                  child: Text(
                    'Choose a mode',
                    style: kSecondTitleTextStyle,
                  ),
                ),
                //cards
                Expanded(
                  flex: kCardFlex,
                  child: Row(
                    children: [
                      Expanded(
                        child: ReusableCard(
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PracticeScreen(),
                              ),
                            );
                          },
                          borderRadius: kborderRadius,
                          cardMargin: kCard1Margin,
                          cardChild: CardContent(
                            textLable: '1 Min',
                            imagePath:
                                Image.asset('assets/images/keyboard1.png'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PracticeScreen(),
                              ),
                            );
                          },
                          borderRadius: kborderRadius,
                          cardMargin: kCard2Margin,
                          cardChild: CardContent(
                            textLable: '2 Min',
                            imagePath:
                                Image.asset('assets/images/keyboard2.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: kCardFlex,
                  child: Row(
                    children: [
                      Expanded(
                        child: ReusableCard(
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PracticeScreen(),
                              ),
                            );
                          },
                          borderRadius: kborderRadius,
                          cardMargin: kCard3Margin,
                          cardChild: CardContent(
                            textLable: '5 Min',
                            imagePath:
                                Image.asset('assets/images/keyboard3.png'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PracticeScreen(),
                              ),
                            );
                          },
                          borderRadius: kborderRadius,
                          cardMargin: kCard4Margin,
                          cardChild: CardContent(
                            textLable: 'Custom',
                            imagePath:
                                Image.asset('assets/images/keyboard1.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Expanded(
                //   flex: kNavigationBarFlex,
                //   child: Container(
                //     decoration: BoxDecoration(
                //       color: Colors.grey.shade900,
                //       borderRadius: const BorderRadius.all(
                //         Radius.circular(90),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
