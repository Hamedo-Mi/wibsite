import 'package:flutter/material.dart';

class MealPage extends StatelessWidget {
  const MealPage({super.key});

  @override
  Widget build(BuildContext context) {
   // Categorized meals for each tab
final Map<String, List<Map<String, String>>> categorizedMeals = {
  "Breakfast": [
    {
      "imagePath": "assets/meals/avocado_toast.jpg",
      "title": "Avocado Toast with Egg",
      "time": "10 min",
      "calories": "300 Cal",
      "description": "A healthy and quick breakfast option with creamy avocado, boiled egg, and crispy toast.",
      "ingredients": "Avocado, Egg, Whole Grain Bread, Salt, Pepper.",
      "instructions": "1. Toast bread. 2. Spread mashed avocado. 3. Add boiled egg slices. 4. Season with salt and pepper."
    },
    {
      "imagePath": "assets/meals/hummus.jpg",
      "title": "Hummus with Veggie Sticks",
      "time": "5 min",
      "calories": "150 Cal",
      "description": "A light and nutritious snack perfect for dipping veggies into creamy hummus.",
      "ingredients": "Hummus, Carrot Sticks, Cucumber Sticks, Bell Pepper Slices.",
      "instructions": "1. Prepare veggies by slicing them. 2. Serve hummus in a bowl. 3. Dip and enjoy!"
    },
    {
      "imagePath": "assets/meals/oatmeal.jpg",
      "title": "Banana and Almond Oatmeal",
      "time": "15 min",
      "calories": "350 Cal",
      "description": "A warm, hearty breakfast made with oats, banana slices, and almond butter.",
      "ingredients": "Oats, Banana, Almond Butter, Milk, Honey.",
      "instructions": "1. Cook oats in milk. 2. Add banana slices and almond butter. 3. Drizzle honey and serve warm."
    },
  ],
  "Brunch": [
    {
      "imagePath": "assets/meals/quinoa_salad.jpg",
      "title": "Quinoa Salad with Avocado",
      "time": "20 min",
      "calories": "400 Cal",
      "description": "A protein-packed quinoa salad with fresh avocado, cherry tomatoes, and a lemon vinaigrette.",
      "ingredients": "Quinoa, Avocado, Cherry Tomatoes, Lemon, Olive Oil, Salt, Pepper.",
      "instructions": "1. Cook quinoa. 2. Dice avocado and cherry tomatoes. 3. Mix all ingredients with lemon vinaigrette."
    },
    {
      "imagePath": "assets/meals/grilled_chicken.jpg",
      "title": "Grilled Chicken Wrap",
      "time": "25 min",
      "calories": "350 Cal",
      "description": "A delicious wrap filled with grilled chicken, fresh lettuce, and tangy sauce.",
      "ingredients": "Chicken Breast, Tortilla Wrap, Lettuce, Yogurt Sauce, Spices.",
      "instructions": "1. Grill chicken. 2. Place lettuce and chicken on a tortilla. 3. Add sauce and roll up."
    },
    {
      "imagePath": "assets/meals/smoothie_bowl.jpg",
      "title": "Berry Smoothie Bowl",
      "time": "10 min",
      "calories": "250 Cal",
      "description": "A refreshing smoothie bowl topped with fresh berries and granola.",
      "ingredients": "Mixed Berries, Banana, Yogurt, Granola, Honey.",
      "instructions": "1. Blend berries, banana, and yogurt. 2. Pour into a bowl. 3. Top with granola and honey."
    },
  ],
  "Lunch": [
    {
      "imagePath": "assets/meals/grilled_salmon.jpg",
      "title": "Grilled Salmon with Veggies",
      "time": "30 min",
      "calories": "500 Cal",
      "description": "A healthy lunch with grilled salmon and a side of roasted vegetables.",
      "ingredients": "Salmon Fillet, Broccoli, Carrots, Olive Oil, Lemon.",
      "instructions": "1. Grill salmon. 2. Roast veggies in olive oil. 3. Squeeze lemon on top and serve."
    },
    {
      "imagePath": "assets/meals/chicken_salad.jpg",
      "title": "Chicken Caesar Salad",
      "time": "15 min",
      "calories": "350 Cal",
      "description": "A classic Caesar salad with grilled chicken, croutons, and parmesan cheese.",
      "ingredients": "Chicken Breast, Romaine Lettuce, Caesar Dressing, Croutons, Parmesan.",
      "instructions": "1. Grill chicken. 2. Toss lettuce, croutons, and dressing. 3. Add chicken and sprinkle parmesan."
    },
    {
      "imagePath": "assets/meals/veggie_bowl.jpg",
      "title": "Veggie Buddha Bowl",
      "time": "25 min",
      "calories": "400 Cal",
      "description": "A wholesome veggie bowl with quinoa, roasted sweet potato, and chickpeas.",
      "ingredients": "Quinoa, Sweet Potato, Chickpeas, Avocado, Tahini.",
      "instructions": "1. Roast sweet potato and chickpeas. 2. Add to cooked quinoa. 3. Top with avocado and tahini."
    },
  ],
  "Snacks": [
    {
      "imagePath": "assets/meals/energy_balls.jpg",
      "title": "Peanut Butter Energy Balls",
      "time": "10 min",
      "calories": "200 Cal",
      "description": "Quick and easy energy balls made with peanut butter, oats, and chocolate chips.",
      "ingredients": "Peanut Butter, Oats, Honey, Chocolate Chips.",
      "instructions": "1. Mix all ingredients. 2. Roll into balls. 3. Refrigerate and serve."
    },
    {
      "imagePath": "assets/meals/fruit_salad.jpg",
      "title": "Fresh Fruit Salad",
      "time": "10 min",
      "calories": "150 Cal",
      "description": "A colorful mix of fresh seasonal fruits, perfect for a light snack.",
      "ingredients": "Strawberries, Kiwi, Orange, Grapes, Honey.",
      "instructions": "1. Chop fruits. 2. Drizzle with honey. 3. Toss and serve."
    },
    {
      "imagePath": "assets/meals/greek_yogurt_parfait.jpg",
      "title": "Greek Yogurt Parfait",
      "time": "5 min",
      "calories": "250 Cal",
      "description": "A creamy parfait made with layers of Greek yogurt, honey, and fresh fruits.",
      "ingredients": "Greek Yogurt, Honey, Granola, Mixed Berries.",
      "instructions": "1. Layer Greek yogurt, berries, and granola in a glass. 2. Repeat layers. 3. Drizzle honey on top."
    },
  ],
};


    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: const Color(0xFF1a1a1e), // Dark background
        appBar: AppBar(
          backgroundColor: const Color(0xFF1a1a1e), // Dark background
          title: const Text(
            'Browse',
            style: TextStyle(color: Colors.white),
          ),
          bottom: const TabBar(
            indicatorColor: Color(0xFFc4ff00), // Highlight color for selected tab
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'Breakfast'),
              Tab(text: 'Brunch'),
              Tab(text: 'Lunch'),
              Tab(text: 'Snacks'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MealGrid(meals: categorizedMeals["Breakfast"]!),
            MealGrid(meals: categorizedMeals["Brunch"]!),
            MealGrid(meals: categorizedMeals["Lunch"]!),
            MealGrid(meals: categorizedMeals["Snacks"]!),
          ],
        ),
      ),
    );
  }
}

class MealGrid extends StatelessWidget {
  final List<Map<String, String>> meals;

  const MealGrid({super.key, required this.meals});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Two meals per row
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 3 / 4,
        ),
        itemCount: meals.length,
        itemBuilder: (context, index) {
          final meal = meals[index];
          return GestureDetector(
            onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => MealDetailsPage(
        imagePath: meal["imagePath"]!,
        title: meal["title"]!,
        time: meal["time"]!,
        calories: meal["calories"]!,
        description: meal["description"]!,
        ingredients: meal["ingredients"]!,
        instructions: meal["instructions"]!,
      ),
    ),
  );
},

            child: MealTip(
              imagePath: meal["imagePath"]!,
              title: meal["title"]!,
              time: meal["time"]!,
              calories: meal["calories"]!,
            ),
          );
        },
      ),
    );
  }
}

class MealTip extends StatelessWidget {
  final String imagePath;
  final String title;
  final String time;
  final String calories;

  const MealTip({
    super.key,
    required this.imagePath,
    required this.title,
    required this.time,
    required this.calories,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border, color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(16.0)),
                color: Colors.black.withOpacity(0.6),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4.0),
                  Row(
                    children: [
                      const Icon(Icons.timer, color: Colors.white, size: 16.0),
                      const SizedBox(width: 4.0),
                      Text(time, style: const TextStyle(color: Colors.white)),
                      const SizedBox(width: 16.0),
                      const Icon(Icons.local_fire_department, color: Colors.white, size: 16.0),
                      const SizedBox(width: 4.0),
                      Text(calories, style: const TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MealDetailsPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String time;
  final String calories;
  final String description;
  final String ingredients;
  final String instructions;

  const MealDetailsPage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.time,
    required this.calories,
    required this.description,
    required this.ingredients,
    required this.instructions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1a1a1e), // Dark background
      appBar: AppBar(
        backgroundColor: const Color(0xFF1a1a1e),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFFFFD700)), // Yellow back arrow
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // title: Text(
        //   title,
        //   style: const TextStyle(color: Colors.white),
        // ),
        // centerTitle: true, // Center the title for a cleaner look
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 250,
              ),
            ),
            const SizedBox(height: 16),
            // Details Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title and Basic Info
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.timer, color: Colors.grey, size: 20),
                      const SizedBox(width: 4),
                      Text(time, style: const TextStyle(color: Colors.grey)),
                      const SizedBox(width: 16),
                      const Icon(Icons.local_fire_department,
                          color: Colors.grey, size: 20),
                      const SizedBox(width: 4),
                      Text(calories, style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Description
                  const Text(
                    "About",
                    style: TextStyle(
                      color: Color(0xFFFFD700), // Highlighted section title
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: const TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  // Ingredients
                  const Text(
                    "Ingredients",
                    style: TextStyle(
                      color: Color(0xFFFFD700),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    ingredients,
                    style: const TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  // Instructions
                  const Text(
                    "Instructions",
                    style: TextStyle(
                      color: Color(0xFFFFD700),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    instructions,
                    style: const TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // CTA (Call-To-Action) Button
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFD700), // Gold button
                  padding: const EdgeInsets.symmetric(
                      vertical: 12, horizontal: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  // Add action for button
                },
                icon: const Icon(Icons.star, color: Colors.black),
                label: const Text(
                  "Add to Favorites",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


