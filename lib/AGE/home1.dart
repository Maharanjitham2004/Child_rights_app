import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sihpro/AGE/age.dart';
import 'package:sihpro/AGE/heal.dart';
import 'package:sihpro/AGE/home1.dart';
import 'package:sihpro/AGE/Navbar.dart';
import 'package:sihpro/AGE/rights.dart';
import 'package:sihpro/Screens/login/login.dart';
import 'package:sihpro/AGE/childmarg.dart';
import 'package:sihpro/AGE/rights.dart';
import 'package:sihpro/AGE/righ.dart';
import 'package:sihpro/AGE/chat.dart';
import 'package:sihpro/AGE/points.dart';
import 'package:sihpro/AGE/leader.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {
  List catNames = [
    "Leaderboard",
    "Points",
    "Chat",
  ];
  List<Color> catColors = [
    Color(0xFFFF9800),
    Color(0xFFEF5350),
    Color(0xFF4CAF50),
  ];
  List imgList = [
    "mnb",
    "cgvbhn",
    "cgvbhn",
    "cvb",
  ];

  List<Icon> catIcons = [
    Icon(Icons.leaderboard, color: Colors.white, size: 30),
    Icon(Icons.emoji_events, color: Colors.white, size: 30),
    Icon(Icons.chat_rounded, color: Colors.white, size: 30),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF674AEF),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF674AEF),
        child: Row(
          children: [
            IconButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Agescreen()))
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen())),
              },
              icon: Icon(
                Icons.rectangle_rounded,
                color: Colors.white,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => home())),
              },
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      drawer: Navbar(),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF674AEF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard_customize_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications_none_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.only(left: 4, bottom: 5),
                  child: Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "search",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search_sharp,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 5, right: 5),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: catColors[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: catIcons[index],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          catNames[index],
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),

                        SizedBox(height: 5),
                        Text(
                          catNames[index],
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                        if (catNames[index] == "Leaderboard")
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        lead()), // Replace with the actual screen for Leaderboard
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "board",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        // Add InkWell for "Points"
                        if (catNames[index] == "Points")
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        points()), // Replace with the actual screen for Points
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "point",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        if (catNames[index] == "Chat")
                          InkWell(
                            onTap: () {
                              // Add your onPressed action for "Chat" here
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => chat()),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "Chat",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                      ],
                    );
                  },
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Levels",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF674AEF),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Container(
                          height: 200,
                          width: 400,
                          child: (InkWell(
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => childmarg()))
                            },
                            splashColor: Colors.cyan,
                            child: Ink.image(
                                image:
                                    AssetImage("assests/images/childmarg.png"),
                                alignment: FractionalOffset.topLeft,
                                fit: BoxFit.cover),
                          )),
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Container(
                          height: 200,
                          width: 400,
                          child: (InkWell(
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => righ()))
                            },
                            splashColor: Colors.cyan,
                            child: Ink.image(
                                image: AssetImage("assests/images/sc.png"),
                                alignment: FractionalOffset.topLeft,
                                fit: BoxFit.cover),
                          )),
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Container(
                          height: 200,
                          width: 400,
                          child: (InkWell(
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => heal()))
                            },
                            splashColor: Colors.cyan,
                            child: Ink.image(
                                image: AssetImage("assests/images/health.png"),
                                alignment: FractionalOffset.topLeft,
                                fit: BoxFit.cover),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
