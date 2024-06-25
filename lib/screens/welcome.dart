import 'package:flutter/material.dart';

import 'authenticaton/authentication.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/welcome_background.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              height: 70.0,
              width: 70.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/images/logo.png",
              ),
            ),
            const SizedBox(height: 30.0),
            const Expanded(
              child: Text(
                "Food for\nEveryone",
                style: TextStyle(
                  fontSize: 65.0,
                  color: Colors.white,
                  fontFamily: "SF-Pro-Rounded-Heavy",
                  height: 0.9,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60.0,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AuthenticationScreen(),
                    ),
                  );
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Colors.white,
                  ),
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    color: Color(0XFFFF460A),
                    fontSize: 17.0,
                    fontFamily: "SF-Pro-Rounded-Semibold",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
