import 'package:flutter/material.dart';
import 'package:typingmaster/reusable_card.dart';
import 'package:typingmaster/constants.dart';

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
            begin: kBackgroundColorBeginAlign,
            end: kBackgroundColorEndAlign,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: kScreenPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  flex: kKeyboardImageFlex,
                  child: Stack(
                    children: [
                      Center(
                        child: Image(
                          image: AssetImage('assets/images/keyboard.png'),
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
                          imagePath: Image.asset(
                            'assets/images/keyboard1.png',
                          ),
                          cardMargin: kCard1Margin,
                          textLable: '1 Min',
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          imagePath: Image.asset(
                            'assets/images/keyboard2.png',
                          ),
                          cardMargin: kCard2Margin,
                          textLable: '2 Min',
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
                          imagePath: Image.asset(
                            'assets/images/keyboard3.png',
                          ),
                          cardMargin: kCard3Margin,
                          textLable: '5 Min',
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          imagePath: Image.asset(
                            'assets/images/keyboard4.png',
                          ),
                          cardMargin: kCard4Margin,
                          textLable: 'Custom',
                        ),
                      ),
                    ],
                  ),
                ),
                //Navigation Bar
                Expanded(
                  flex: kNavigationBarFlex,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF202020),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
