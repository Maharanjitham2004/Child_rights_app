import 'package:flutter/material.dart';
import 'package:sihpro/AGE/home1.dart';
import 'package:sihpro/AGE/childmarg.dart';
import 'package:sihpro/AGE/childmarg2.dart';
import 'package:sihpro/AGE/childmarg1.dart';
import 'package:sihpro/AGE/rights.dart';
import 'package:sihpro/AGE/righgame.dart';

void main() {
  runApp(righ());
}

class righ extends StatelessWidget {
  const righ({super.key});

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
                        image: AssetImage('assests/images/OIP.png'),
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
                        'The right to equality, a cornerstone in legal and political doctrine, underscores the imperative of impartial treatment and uniform protection of rights for all individuals. Constitutionally enshrined in many democratic nations, such as India, under Articles 14 to 18, this right assures that every citizen is subject to the same legal standards and safeguards against discrimination rooted in factors like race, gender, religion, or caste. It embodies the principle of equal opportunity, necessitating fair access to resources and services. Non-discrimination lies at its core, combating biases. Affirmative action provisions may address historical inequities. Essentially, the right to equality establishes the foundation for a just, egalitarian society, promoting fairness and universal rights'),
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
                            MaterialPageRoute(builder: (context) => rights()))
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
