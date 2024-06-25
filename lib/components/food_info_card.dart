import 'package:flutter/material.dart';

class FoodInfoCard extends StatelessWidget {
  final String imagePath;
  final String label;
  final String price;

  const FoodInfoCard({
    super.key,
    required this.imagePath,
    required this.label,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        height: 320.0,
        width: 220.0,
        child: Stack(
          children: [
            Container(
              height: 320.0,
              width: 220.0,
              margin: const EdgeInsets.only(top: 50.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 20.0,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'SF-Pro-Rounded-Semibold',
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15.0),
                  Text(
                    '₹$price',
                    style: const TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'SF-Pro-Rounded-Bold',
                      color: Color(0xFFFA4A0C),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                foregroundImage: AssetImage(
                  imagePath,
                ),
                radius: 75.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
