import 'package:flutter/material.dart';
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
              Color(0xFFF0F4FD),
              Color(0xFFE1DAFB),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(35, 02, 35, 00),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  flex: 140,
                  child: Stack(
                    children: [
                      Center(
                        child: Image(
                          image: AssetImage('assets/images/keyboard.png'),
                        ),
                      ),
                      Text(
                        'Ready TO Type Like A Pro?\nStart Here!',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF3D0097),
                        ),
                      )
                    ],
                  ),
                ),
                const Expanded(
                  flex: 10,
                  child: Text(
                    'Choose a mode',
                    style: TextStyle(
                      color: Color(0xFF3D0097),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //cards
                Expanded(
                  flex: 110,
                  child: Row(
                    children: [
                      Expanded(
                        child: ReusableCard(
                          imagePath: Image.asset(
                            'assets/images/keyboard1.png',
                          ),
                          cardMargin: const EdgeInsets.fromLTRB(00, 20, 10, 10),
                          textLable: '1 Min',
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          imagePath: Image.asset(
                            'assets/images/keyboard2.png',
                          ),
                          cardMargin: const EdgeInsets.fromLTRB(10, 20, 00, 10),
                          textLable: '2 Min',
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 110,
                  child: Row(
                    children: [
                      Expanded(
                        child: ReusableCard(
                          imagePath: Image.asset(
                            'assets/images/keyboard3.png',
                          ),
                          cardMargin: const EdgeInsets.fromLTRB(00, 10, 10, 20),
                          textLable: '5 Min',
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          imagePath: Image.asset(
                            'assets/images/keyboard4.png',
                          ),
                          cardMargin: const EdgeInsets.fromLTRB(10, 10, 00, 20),
                          textLable: 'Custom',
                        ),
                      ),
                    ],
                  ),
                ),
                //Navigation Bar
                Expanded(
                  flex: 30,
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
