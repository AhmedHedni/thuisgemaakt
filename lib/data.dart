class Recipe {

  String title;
  String description;
  String image;
  int calories;
  int carbo;
  int protein;

  Recipe(this.title, this.description, this.image, this.calories, this.carbo, this.protein);

}

List<Recipe> getRecipes(){
  return <Recipe>[
    Recipe("Crispy Kip Rijst", "Zo onweerstaanbaar lekker", "assets/images/chicken_fried_rice.png", 250, 35, 6),
    Recipe("Pasta Bolognese", "Echte Italiaanse klassieker met een vlezige chilisaus", "assets/images/pasta_bolognese.png", 200, 45, 10),
    Recipe("Crispy Aardappelen", "Krokante Knoflook Geroosterde Aardappelen", "assets/images/filete_con_papas_cambray.png", 150, 30, 8),
    Recipe("Asperge Salade", "Salade van witte ui, venkel en waterkers", "assets/images/asparagus.png", 190, 35, 12),
    Recipe("Filet Mignon", "Bacon-Wrapped Filet Mignon", "assets/images/steak_bacon.png", 250, 55, 20),
  ];
}