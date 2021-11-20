import 'package:flutter/material.dart';
import 'package:recipee_app/model/recipe.dart';
import 'package:recipee_app/views/recipee_detail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipee Calculator'),
      ),
      body: SafeArea(
      
child: ListView.builder(
  // 5
  itemCount: Recipe.samples.length,
  // 6
  itemBuilder: (BuildContext context, int index) {
    // 7
// TODO: Add GestureDetector
// 7
return GestureDetector(
  // 8
  onTap: () {
    // 9
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
        // 10
        // TODO: Replace return with return RecipeDetail()
return RecipeDetail(recipe: Recipe.samples[index]);
      },
    ),
   );
  },
  // 11
  child: buildRecipeCard(Recipe.samples[index]),
);

   // return Text(Recipe.samples[index].label);
  },
),

      ),
    );
  }
  Widget buildRecipeCard(Recipe recipe) {
  return Card(
    // 1
    elevation: 2.0,
    // 2
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0)),
    // 3
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      // 4
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.imageUrl)),
          // 5
          const SizedBox(
            height: 14.0,
          ),
          // 6
          Text(
            recipe.label,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino',
            ),
          )
        ],
      ),
    ),
  );
}


    // TODO: Add buildRecipeCard() here

}
