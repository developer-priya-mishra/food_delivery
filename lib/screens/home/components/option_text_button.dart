import 'package:flutter/material.dart';

class OptionTextButton extends StatelessWidget {
  final String label;
  final PageController pageController;
  final int pageIndex;
  final int itemIndex;

  const OptionTextButton({
    super.key,
    required this.label,
    required this.pageController,
    required this.pageIndex,
    required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          pageController.jumpToPage(itemIndex);
        },
        child: Container(
          padding: const EdgeInsets.only(bottom: 6.0),
          width: double.maxFinite,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: pageIndex == itemIndex
                    ? const Color(0xFFFA4A0C)
                    : Colors.transparent,
                width: 2.0,
              ),
            ),
          ),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 17.0,
              fontFamily: 'SF-Pro-Rounded-Regular',
              color: pageIndex == itemIndex
                  ? const Color(0xFFFA4A0C)
                  : const Color(0xFF9A9A9D),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
