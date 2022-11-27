import 'package:flutter/material.dart';

import '../home.dart';
import '../theme/constanst.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  "TRACKY",
                  style: Constant.introMainHeader,
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "New and better way \nto track your transactions",
                  style: Constant.introSecondHeader,
                ),
                const SizedBox(
                  height: 100,
                ),
                Image.asset(
                  'assets/images/intro.png',
                  height: 300,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  height: 50,
                  width: 290,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: buttonColor),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      child: Text(
                        "Get started",
                        style: Constant.buttonText,
                      )),
                )
              ],
            ),
          )
        ]),
      )),
    );
  }
}
