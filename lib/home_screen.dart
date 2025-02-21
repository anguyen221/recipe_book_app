import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      "name": "Placeholder Recipe 1",
      "ingredients": "- Ingredient A\n- Ingredient B\n- Ingredient C",
      "instructions": "1. Step one.\n2. Step two.\n3. Step three."
    },
    {
      "name": "Placeholder Recipe 2",
      "ingredients": "- Ingredient X\n- Ingredient Y\n- Ingredient Z",
      "instructions": "1. Do this.\n2. Do that.\n3. Done!"
    },
    {
      "name": "Placeholder Recipe 3",
      "ingredients": "- Ingredient P\n- Ingredient Q\n- Ingredient R",
      "instructions": "1. Mix ingredients.\n2. Cook for 10 minutes.\n3. Serve."
    },
    {
      "name": "Placeholder Recipe 4",
      "ingredients": "- Ingredient L\n- Ingredient M\n- Ingredient N",
      "instructions": "1. Preheat oven.\n2. Bake for 20 minutes.\n3. Let cool."
    },
    {
      "name": "Placeholder Recipe 5",
      "ingredients": "- Ingredient D\n- Ingredient E\n- Ingredient F",
      "instructions": "1. Chop ingredients.\n2. Fry until golden brown.\n3. Enjoy!"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recipe Book")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 6),
              elevation: 3,
              child: ListTile(
                title: Text(recipes[index]["name"]!, style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        recipeName: recipes[index]["name"]!,
                        ingredients: recipes[index]["ingredients"]!,
                        instructions: recipes[index]["instructions"]!,
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
