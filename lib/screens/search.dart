import 'package:flutter/material.dart';

import '../components/food_info_card.dart';
import '../constant/data_sets.dart';

class SearchScreen extends SearchDelegate {
  @override
  TextStyle? get searchFieldStyle => const TextStyle(
        fontSize: 17,
        fontFamily: 'SF-Pro-Rounded-Semibold',
        decorationThickness: 0,
      );

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: const Color(0XFFEEEEEE),
      inputDecorationTheme:
          const InputDecorationTheme(border: InputBorder.none),
      primaryColor: Colors.red,
      appBarTheme: const AppBarTheme(
        color: Color(0XFFEEEEEE),
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    if (query.isEmpty) {
      return [];
    }
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(
          Icons.clear,
          size: 20.0,
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(
        Icons.arrow_back_ios_new_rounded,
        size: 20.0,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.trim().isEmpty) {
      return const SizedBox(
        child: Center(
          child: Text("No result"),
        ),
      );
    }

    final filteredFoodOptions = foodOptions.where((item) {
      return item["label"] == query;
    }).toList();

    if (filteredFoodOptions.isEmpty) {
      return const Center(
        child: Text("No result found"),
      );
    }

    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.width * 0.5 / 320,
      mainAxisSpacing: 20.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 20.0,
      ),
      children: filteredFoodOptions.map((item) {
        return FoodInfoCard(
          imagePath: item["imagePath"]!,
          label: item["label"]!,
          price: item["price"]!,
        );
      }).toList(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.width * 0.5 / 320,
      mainAxisSpacing: 20.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 20.0,
      ),
      children: foodOptions.map((item) {
        return FoodInfoCard(
          imagePath: item["imagePath"]!,
          label: item["label"]!,
          price: item["price"]!,
        );
      }).toList(),
    );
  }
}
