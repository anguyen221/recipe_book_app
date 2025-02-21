import 'package:flutter/material.dart';
import 'package:recipe_book_app/details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<String> recipes = [
    "Placeholder Recipe 1",
    "Placeholder Recipe 2",
    "Placeholder Recipe 3",
    "Placeholder Recipe 4",
    "Placeholder Recipe 5"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recipe Book")),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipeName: recipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
