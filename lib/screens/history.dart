import 'package:flutter/material.dart';

import '../components/custom_app_bar.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: const CustomAppBar(label: 'History'),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.calendar_month,
              color: Color(0xffC7C7C7),
              size: 125.0,
            ),
            SizedBox(height: 25.0),
            Text(
              'No history yet',
              style: TextStyle(
                fontSize: 28.0,
                fontFamily: 'SF-Pro-Rounded-Semibold',
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              'Hit the orange button down\nbelow to Create an order',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'SF-Pro-Rounded-Regular',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 60.0,
        margin: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          bottom: 40.0,
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              Color(0xFFFA4A0C),
            ),
          ),
          child: const Text(
            'Start ordering',
            style: TextStyle(
              fontSize: 17.0,
              fontFamily: 'SF-Pro-Rounded-Semibold',
              color: Color(0xFFF6F6F9),
            ),
          ),
        ),
      ),
    );
  }
}
