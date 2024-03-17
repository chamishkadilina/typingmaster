import 'package:flutter/material.dart';
import 'package:typingmaster/constants.dart';
import 'package:typingmaster/reusable_card.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({super.key});

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
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
              begin: kPracticeBeginAlign,
              end: kPracticeEndAlign,
            ),
          ),
          child: Padding(
            padding: kPracticeScreenPadding,
            child: Column(
              children: [
                Expanded(
                  flex: 24,
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 40,
                        child: SizedBox(
                          width: 50,
                        ),
                      ),
                      Expanded(
                        flex: 20,
                        child: Column(
                          children: [
                            const SizedBox(height: 80),
                            Expanded(
                              flex: 14,
                              child: ReusableCard(
                                color: kTypingSpaceColor,
                                borderRadius: kborderRadius,
                                cardChild: Container(),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Expanded(
                              flex: 3,
                              child: ReusableCard(
                                color: kTimeBox,
                                borderRadius: kborderRadius,
                                cardChild: const RotatedBox(
                                  quarterTurns: 45,
                                  child: Center(
                                    child: Text(
                                      '1:00',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Expanded(
                              flex: 2,
                              child: ReusableCard(
                                color: kRefreshIconColor,
                                borderRadius: kborderRadius,
                                cardChild: const RotatedBox(
                                  quarterTurns: 45,
                                  child: Center(
                                    child: kRefreshIcon,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 80),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        flex: 50,
                        child: ReusableCard(
                          color: kTypingSpaceColor,
                          borderRadius: kborderRadius,
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                //navigationBar
                Expanded(
                  flex: 2,
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
      ),
    );
  }
}
