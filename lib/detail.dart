import 'package:flutter/material.dart';
import 'package:recipe/constants.dart';
import 'package:recipe/shared.dart';
import 'package:recipe/data.dart';

class Detail extends StatelessWidget {

  final Recipe recipe;

  Detail({@required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  buildTextTitleVariation1(recipe.title),

                  buildTextSubTitleVariation1(recipe.description),

                ],
              ),
            ),

            SizedBox(
              height: 16,
            ),

            Container(
              height: 310,
              padding: EdgeInsets.only(left: 16),
              child: Stack(
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      buildTextTitleVariation2('Voeding', false),

                      SizedBox(
                        height: 16,
                      ),

                      buildNutrition(recipe.calories, "Calorieën", "Kcal"),

                      SizedBox(
                        height: 16,
                      ),

                      buildNutrition(recipe.carbo, "Carbo", "g"),

                      SizedBox(
                        height: 16,
                      ),

                      buildNutrition(recipe.protein, "Eiwitten", "g"),

                    ],
                  ),

                  Positioned(
                    right: -80,
                    child: Hero(
                      tag: recipe.image,
                      child: Container(
                        height: 310,
                        width: 310,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(recipe.image),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  buildTextTitleVariation2('Ingrediënten', false),

                  buildTextSubTitleVariation1("2 kopjes pecannoten, verdeeld"),
                  buildTextSubTitleVariation1("1 eetlepel ongezouten boter, gesmolten"),
                  buildTextSubTitleVariation1("1/4 theelepel zout, plus meer"),
                  buildTextSubTitleVariation1("3 eetlepels vers citroensap"),
                  buildTextSubTitleVariation1("2 eetlepels olijfolie"),
                  buildTextSubTitleVariation1("1/2 teaspoon honey"),

                  SizedBox(height: 16,),

                  buildTextTitleVariation2('Bereidingswijze', false),

                  buildTextSubTitleVariation1("STAP 1"),
                  buildTextSubTitleVariation1("Meng in een middelgrote kom alle ingrediënten voor de marinade met wat kruiden. Snijd de kip in hapklare stukjes en meng met de marinade. Dek af en zet 1 uur of een nacht in de koelkast."),

                  buildTextSubTitleVariation1("STAP 2"),
                  buildTextSubTitleVariation1("Verhit de olie in een grote, zware pan. Voeg de ui, knoflook, groene peper, gember en wat kruiden toe. Bak op middelhoog vuur gedurende 10 minuten of tot ze zacht zijn."),

                  buildTextSubTitleVariation1("STAP 3"),
                  buildTextSubTitleVariation1("Voeg de kruiden toe met de tomatenpuree, kook nog 2 minuten tot geurig, voeg dan de bouillon en de gemarineerde kip toe. Laat 15 minuten koken en voeg dan de overgebleven marinade toe die nog in de kom zit. Laat 5 minuten sudderen en bestrooi met de geroosterde amandelen. Serveer eventueel met rijst, naanbrood, chutney, koriander en partjes limoen."),

                ],
              ),
            ),

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {}, 
        backgroundColor: kPrimaryColor,
        icon: Icon(
          Icons.play_circle_fill,
          color: Colors.white,
          size: 32,
        ),
        label: Text(
          "Watch Video",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        )
      ),
    );
  }

  Widget buildNutrition(int value, String title, String subTitle){
    return Container(
      height: 60,
      width: 150,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        boxShadow: [kBoxShadow],
      ),
      child: Row(
        children: [

          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [kBoxShadow],
            ),
            child: Center(
              child: Text(
                value.toString(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SizedBox(
            width: 20,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }

}