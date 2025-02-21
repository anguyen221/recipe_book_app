import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String recipeName;

  const DetailsScreen({super.key, required this.recipeName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipeName)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ingredients:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text("- Placeholder Ingredient 1\n- Placeholder Ingredient 2\n- Placeholder Ingredient 3"),
            SizedBox(height: 16),
            Text("Instructions:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text("1. Placeholder step 1.\n2. Placeholder step 2.\n3. Placeholder step 3."),
          ],
        ),
      ),
    );
  }
}
