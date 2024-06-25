import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/food_info_card.dart';
import '../history.dart';
import '../cart.dart';
import '../profile.dart';
import 'components/option_text_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();
  int pageIndex = 0;

  final List<String> deligates = ['Foods', 'Drinks', 'Snacks', 'Sauces'];

  final List<Map<String, String>> foodOptions = [
    {
      "imagePath": 'assets/images/food1.jpg',
      "label": 'Veggie\ntomato mix',
      "price": '900',
    },
    {
      "imagePath": 'assets/images/food2.jpg',
      "label": 'Spicy\nfish sauce',
      "price": '300',
    },
    {
      "imagePath": 'assets/images/food3.jpg',
      "label": 'Grilled\nchicken',
      "price": '1200',
    },
    {
      "imagePath": 'assets/images/food4.jpg',
      "label": 'Beef\nsteak',
      "price": '1500',
    },
    {
      "imagePath": 'assets/images/food5.jpg',
      "label": 'Pasta\ncarbonara',
      "price": '800',
    },
  ];

  final List<Map<String, String>> drinkOptions = [
    {
      "imagePath": 'assets/images/drink1.jpg',
      "label": 'Fresh\norange juice',
      "price": '500',
    },
    {
      "imagePath": 'assets/images/drink2.jpg',
      "label": 'Iced\ncoffee',
      "price": '300',
    },
    {
      "imagePath": 'assets/images/drink3.jpg',
      "label": 'Green\nsmoothie',
      "price": '600',
    },
    {
      "imagePath": 'assets/images/drink4.jpg',
      "label": 'Berry\nmilkshake',
      "price": '450',
    },
    {
      "imagePath": 'assets/images/drink5.jpg',
      "label": 'Mint\nlemonade',
      "price": '550',
    },
  ];

  final List<Map<String, String>> snackOptions = [
    {
      "imagePath": 'assets/images/snack1.jpg',
      "label": 'Cheese\nnachos',
      "price": '250',
    },
    {
      "imagePath": 'assets/images/snack2.jpg',
      "label": 'Chocolate\nmuffin',
      "price": '150',
    },
    {
      "imagePath": 'assets/images/snack3.jpg',
      "label": 'Fruit\nsalad',
      "price": '200',
    },
    {
      "imagePath": 'assets/images/snack4.jpg',
      "label": 'Garlic\nbread',
      "price": '180',
    },
    {
      "imagePath": 'assets/images/snack5.jpg',
      "label": 'Veggie\nchips',
      "price": '120',
    },
  ];

  final List<Map<String, String>> sauceOptions = [
    {
      "imagePath": 'assets/images/sauce1.jpg',
      "label": 'Tomato\nketchup',
      "price": '50',
    },
    {
      "imagePath": 'assets/images/sauce2.jpg',
      "label": 'Spicy\nmustard',
      "price": '60',
    },
    {
      "imagePath": 'assets/images/sauce3.jpg',
      "label": 'Garlic\naoli',
      "price": '70',
    },
    {
      "imagePath": 'assets/images/sauce4.jpg',
      "label": 'Sweet\nchili',
      "price": '55',
    },
    {
      "imagePath": 'assets/images/sauce5.jpg',
      "label": 'Barbecue\nsauce',
      "price": '65',
    },
  ];

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color(0xFFE7E7E7),
                hintText: 'Search',
                prefixIcon: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/search.svg',
                      height: 18.0,
                      width: 18.0,
                    ),
                  ],
                ),
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
