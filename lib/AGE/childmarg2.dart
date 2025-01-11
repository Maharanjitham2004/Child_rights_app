import 'package:flutter/material.dart';
import 'package:sihpro/AGE/home2.dart';
import 'package:sihpro/Screens/login/login.dart';
import 'package:sihpro/game/colors.dart';
import 'package:sihpro/game/figure_image.dart';
import 'package:sihpro/widget/letter.dart';
import 'package:sihpro/AGE/home1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  //choosing the game word
  String word = "Freedom".toUpperCase();
  //Create a list that contains the Alphabet, or you can just copy and paste it
  List<String> alphabets = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primaryColor,
        appBar: AppBar(
          title: Text("Level 1"),
          elevation: 0,
          centerTitle: true,
          backgroundColor: AppColor.primaryColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Stack(
                  children: [
                    //let's make the figure widget
                    //let's add the images to the asset folder
                    //Okey now we will create a Game class
                    //Now the figure will be built according to the number of tries
                    figureImage(Game.tries >= 0, "assests/images/0.png"),
                    figureImage(Game.tries >= 1, "assests/images/1.png"),
                    figureImage(Game.tries >= 2, "assests/images/2.png"),
                    figureImage(Game.tries >= 3, "assests/images/3.png"),
                    figureImage(Game.tries >= 4, "assests/images/4.png"),
                    figureImage(Game.tries >= 5, "assests/images/5.png"),
                    figureImage(Game.tries >= 6, "assests/images/6.png"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //Now we will build the Hidden word widget
              //now let's go back to the Game class and add
              // a new variable to store the selected character
              /* and check if it's on the word */
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: word
                    .split('')
                    .map((e) => letter(e.toUpperCase(),
                        !Game.selectedChar.contains(e.toUpperCase())))
                    .toList(),
              ),

              //Now let's build the Game keyboard
              Container(
                child: Center(
                  child: SizedBox(
                    height: 70,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent,
                          side: BorderSide(width: 3, color: Colors.brown),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          padding: EdgeInsets.all(20)),
                      onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => home2()))
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 300.0,
                child: GridView.count(
                  crossAxisCount: 7,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                  padding: EdgeInsets.all(8.0),
                  children: alphabets.map((e) {
                    return RawMaterialButton(
                      onPressed: Game.selectedChar.contains(e)
                          ? null // we first check that we didn't selected the button before
                          : () {
                              setState(() {
                                Game.selectedChar.add(e);
                                print(Game.selectedChar);
                                if (!word.split('').contains(e.toUpperCase())) {
                                  Game.tries++;
                                }
                              });
                            },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Text(
                        e,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      fillColor: Game.selectedChar.contains(e)
                          ? Colors.black87
                          : AppColor.primaryColorDark,
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ));
  }
}

class Game {
  static int tries = 0;
  static List<String> selectedChar = [];
}
