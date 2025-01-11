import 'package:flutter/material.dart';
import 'package:sihpro/AGE/home1.dart';
import 'package:sihpro/AGE/childmarg.dart';
import 'package:sihpro/AGE/childmarg2.dart';
import 'package:sihpro/AGE/childmarg1.dart';

void main() {
  runApp(childmarg());
}

class childmarg extends StatelessWidget {
  const childmarg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF674AEF),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 250,
                width: 600,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assests/images/child_marriage.png'),
                        fit: BoxFit.fill)),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 30,
                        color: Colors.cyan,
                      ),
                    ),
                    Text(
                        'Child marriage is a deeply entrenched social issue that persists in many parts of the world, despite international efforts to combat it. This harmful practice involves the marriage of individuals below the age of 18, and it disproportionately affects girls. Child marriage is a violation of human rights, perpetuates gender inequality, and has devastating consequences for the physical, emotional, and social well-being of those involved. In this essay, we will explore the causes and consequences of child marriage, as well as efforts to eradicate it.'),
                  ],
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
                            MaterialPageRoute(builder: (context) => MyApp1()))
                      },
                      child: Text(
                        "start game",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
