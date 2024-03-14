import 'package:flutter/material.dart';

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
            padding: const EdgeInsets.fromLTRB(30, 05, 30, 00),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  flex: 15,
                  child: Text(
                    'Ready To Type Like A Pro?\nStart Here!',
                    style: TextStyle(
                      color: Color(0xFF3D0097),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Expanded(
                  flex: 1,
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
                  flex: 12,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(00, 20, 10, 10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.5,
                              color: Colors.white,
                            ),
                            color: const Color(0xFFDFC8FF),
                            borderRadius: BorderRadius.circular(18.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(255, 255, 255, 0.9),
                                blurRadius: 20,
                                spreadRadius: 2,
                                offset: Offset(-7, -7),
                              ),
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                blurRadius: 20,
                                spreadRadius: 2,
                                offset: Offset(7, 7),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(10, 20, 00, 10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.5,
                              color: Colors.white,
                            ),
                            color: const Color(0xFFDFC8FF),
                            borderRadius: BorderRadius.circular(18.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(255, 255, 255, 0.9),
                                blurRadius: 20,
                                spreadRadius: 2,
                                offset: Offset(-7, -7),
                              ),
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                blurRadius: 20,
                                spreadRadius: 2,
                                offset: Offset(7, 7),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 12,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(00, 10, 10, 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.5,
                              color: Colors.white,
                            ),
                            color: const Color(0xFFDFC8FF),
                            borderRadius: BorderRadius.circular(18.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(255, 255, 255, 0.9),
                                blurRadius: 20,
                                spreadRadius: 2,
                                offset: Offset(-7, -7),
                              ),
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                blurRadius: 20,
                                spreadRadius: 2,
                                offset: Offset(7, 7),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(10, 10, 00, 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.5,
                              color: Colors.white,
                            ),
                            color: const Color(0xFFDFC8FF),
                            borderRadius: BorderRadius.circular(18.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(255, 255, 255, 0.9),
                                blurRadius: 20,
                                spreadRadius: 2,
                                offset: Offset(-7, -7),
                              ),
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                blurRadius: 20,
                                spreadRadius: 2,
                                offset: Offset(7, 7),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Navigation Bar
                Expanded(
                  flex: 4,
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
