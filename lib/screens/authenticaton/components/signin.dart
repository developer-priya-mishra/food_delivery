import 'package:flutter/material.dart';

import '../../home/home.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: [
          const SizedBox(height: 50.0),
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email address',
            ),
          ),
          const SizedBox(height: 35.0),
          const TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          const SizedBox(height: 35.0),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Forget Password?",
              style: TextStyle(
                color: Color(0xFFFA4A0C),
                fontSize: 17.0,
                fontFamily: 'SF-Pro-Rounded-Semibold',
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height -
                (380 + 50 + 20 + (56 * 2) + (35 * 3) + 48 + 60),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 60.0,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Color(0xFFFA4A0C),
                ),
              ),
              child: const Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontFamily: "SF-Pro-Rounded-Semibold",
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
