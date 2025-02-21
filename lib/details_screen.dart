import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String recipeName;
  final String ingredients;
  final String instructions;

  const DetailsScreen({
    super.key,
    required this.recipeName,
    required this.ingredients,
    required this.instructions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipeName)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ingredients:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(ingredients, style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text("Instructions:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(instructions, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
