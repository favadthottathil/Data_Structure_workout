void main() {
  Recipe recipe = Recipe(2, 10);

  print(recipe.coffee);
}

class Recipe {
  int coffeebean;
  int milk;

  Recipe(this.coffeebean, this.milk);

  int get coffee => coffeebean + milk;
}
