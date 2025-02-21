import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      "name": "Spaghetti Carbonara",
      "ingredients": "- 200g spaghetti\n- 100g pancetta\n- 2 eggs\n- 50g Parmesan cheese\n- Black pepper\n- Salt",
      "instructions": "1. Cook spaghetti until firm.\n2. Fry pancetta until crispy.\n3. Whisk eggs with Parmesan and pepper.\n4. Combine everything with pasta off heat.\n5. Serve immediately."
    },
    {
      "name": "Chicken Alfredo",
      "ingredients": "- 200g fettuccine\n- 1 chicken breast\n- 1 cup heavy cream\n- 50g Parmesan cheese\n- 2 cloves garlic\n- Butter, salt, and pepper",
      "instructions": "1. Cook fettuccine until firm.\n2. Cook chicken in butter and garlic.\n3. Add cream and Parmesan, then simmer.\n4. Toss pasta with sauce.\n5. Serve hot."
    },
    {
      "name": "Pancakes",
      "ingredients": "- 1 cup flour\n- 1 cup milk\n- 1 egg\n- 2 tbsp sugar\n- 1 tsp baking powder\n- Butter for frying",
      "instructions": "1. Mix dry ingredients.\n2. Whisk in milk and egg.\n3. Cook pancakes in butter until golden.\n4. Serve with syrup or toppings of choice."
    },
    {
      "name": "Guacamole",
      "ingredients": "- 2 avocados\n- 1 lime\n- 1 tomato\n- 1 small onion\n- Salt and pepper",
      "instructions": "1. Mash avocados.\n2. Mix in chopped tomato, onion, lime juice, salt, and pepper.\n3. Serve fresh."
    },
    {
      "name": "Chocolate Chip Cookies",
      "ingredients": "- 1 cup flour\n- ½ cup butter\n- ½ cup sugar\n- 1 egg\n- 1 tsp vanilla\n- ½ cup chocolate chips\n- ½ tsp baking soda",
      "instructions": "1. Cream butter and sugar.\n2. Mix in egg and vanilla.\n3. Stir in flour, baking soda, and chocolate chips.\n4. Bake at 180°C (350°F) for 10-12 minutes."
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
