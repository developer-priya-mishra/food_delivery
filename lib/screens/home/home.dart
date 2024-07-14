import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/food_info_card.dart';
import '../../constant/data_sets.dart';
import '../history.dart';
import '../cart.dart';
import '../profile.dart';
import '../search.dart';
import 'components/option_text_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();
  int pageIndex = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF2F2F2),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/svgs/menu.svg'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartScreen(),
                ),
              );
            },
            icon: SvgPicture.asset('assets/svgs/cart.svg'),
          ),
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Delicious\nfood for you.",
              style: TextStyle(
                fontSize: 34.0,
                fontFamily: 'SF-Pro-Rounded-Bold',
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          Container(
            height: 56.0,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              color: Color(0xFFE7E7E7),
            ),
            child: GestureDetector(
              onTap: () {
                showSearch(
                  context: context,
                  delegate: SearchScreen(),
                );
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 16.0,
                    ),
                    child: SvgPicture.asset(
                      'assets/svgs/search.svg',
                      height: 18.0,
                      width: 18.0,
                    ),
                  ),
                  const Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'SF-Pro-Rounded-Semibold',
                      color: Color(0xFF9A9A9D),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: deligates.map((item) {
                return OptionTextButton(
                  label: item,
                  pageController: pageController,
                  pageIndex: pageIndex,
                  itemIndex: deligates.indexOf(item),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'see more',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xFFFA4A0C),
                    fontFamily: 'SF-Pro-Rounded-Regular',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          SizedBox(
            height: 320.0,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (value) {
                setState(() {
                  pageIndex = value;
                });
              },
              controller: pageController,
              children: [
                // page 1
                ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  scrollDirection: Axis.horizontal,
                  children: foodOptions.map((item) {
                    return FoodInfoCard(
                      imagePath: item["imagePath"]!,
                      label: item["label"]!,
                      price: item["price"]!,
                    );
                  }).toList(),
                ),
                // page 2
                ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  scrollDirection: Axis.horizontal,
                  children: drinkOptions.map((item) {
                    return FoodInfoCard(
                      imagePath: item["imagePath"]!,
                      label: item["label"]!,
                      price: item["price"]!,
                    );
                  }).toList(),
                ),
                // page 3
                ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  scrollDirection: Axis.horizontal,
                  children: snackOptions.map((item) {
                    return FoodInfoCard(
                      imagePath: item["imagePath"]!,
                      label: item["label"]!,
                      price: item["price"]!,
                    );
                  }).toList(),
                ),
                // page 4
                ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  scrollDirection: Axis.horizontal,
                  children: sauceOptions.map((item) {
                    return FoodInfoCard(
                      imagePath: item["imagePath"]!,
                      label: item["label"]!,
                      price: item["price"]!,
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home_rounded,
                size: 30.0,
                color: const Color(0xFFFA4A0C),
                shadows: [
                  Shadow(
                    color: const Color(0xFFD73800).withOpacity(0.5),
                    offset: const Offset(0, 6),
                    blurRadius: 20.0,
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline_rounded,
                size: 30.0,
                color: Color(0xFFADADAF),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.person_outline_rounded,
                size: 30.0,
                color: Color(0xFFADADAF),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HistoryScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.history_rounded,
                size: 30.0,
                color: Color(0xFFADADAF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
