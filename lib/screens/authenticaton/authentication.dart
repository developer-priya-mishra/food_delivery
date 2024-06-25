import 'package:flutter/material.dart';

import 'components/signin.dart';
import 'components/signup.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
          ),
          flexibleSpace: Center(
            child: Image.asset(
              "assets/images/logo.png",
              height: 150.0,
              width: 150.0,
            ),
          ),
          toolbarHeight: 334.0,
          bottom: TabBar(
            dividerColor: Colors.transparent,
            indicatorColor: const Color(0xFFFA4A0C),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 50.0),
            splashBorderRadius: const BorderRadius.all(Radius.circular(30.0)),
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            onTap: (value) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            tabs: const [
              Tab(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontFamily: 'SF-Pro-Rounded-Semibold',
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontFamily: 'SF-Pro-Rounded-Semibold',
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Signin(),
            Signup(),
          ],
        ),
      ),
    );
  }
}
