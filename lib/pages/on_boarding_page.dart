import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../styles/colors.dart';
import '../styles/text_style.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});
  static const nameRoute = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue.shade300, Colors.blue.shade900])),
        // color: kBgColor.withOpacity(0.5),
        child: Column(children: [
          const SizedBox(
            height: 150,
          ),
          Image.asset('assets/images/onboard1.png'),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kBgColor.withOpacity(0.8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome!',
                  style: kHeading5,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'welcome to Crypto Saving Apps, the easy way to improve your finances and help you control expenses and income',
                  style: kSubtitle2,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/main', (route) => false);
                    },
                    child: const Text('Get Started'))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
