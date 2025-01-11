import 'package:flutter/material.dart';
import 'package:sihpro/Screens/login/login.dart';
import 'package:sihpro/AGE/home1.dart';
import 'package:sihpro/AGE/home2.dart';
import 'package:sihpro/AGE/age.dart';

void main() {
  runApp(Agescreen());
}

class Agescreen extends StatelessWidget {
  const Agescreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlueAccent,
        child: Row(
          children: [
            IconButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()))
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.rectangle_rounded,
                color: Colors.white,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assests/images/mr.png'),
                      fit: BoxFit.fill)),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
              child: Text(
                "Select your Age",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                    fontStyle: FontStyle.italic,
                    fontSize: 34),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => home2()))
                          },
                          child: Text(
                            "8-12",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
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
                                MaterialPageRoute(builder: (context) => home()))
                          },
                          child: Text(
                            "13-16",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
