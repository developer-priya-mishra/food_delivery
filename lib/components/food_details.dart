import 'package:flutter/material.dart';

class FoodDetails extends StatelessWidget {
  final String imagePath;
  final String label;
  final String price;

  const FoodDetails({
    super.key,
    required this.imagePath,
    required this.label,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF2F2F2),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.pop(context);
            },
            icon: const Icon(
              Icons.favorite_border_rounded,
              size: 25.0,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              foregroundImage: AssetImage(imagePath),
              radius: 100.0,
            ),
          ),
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
    );
  }
}
