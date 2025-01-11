import 'package:flutter/material.dart';
import 'package:sihpro/AGE/home1.dart';
import 'package:sihpro/AGE/childmarg.dart';
import 'package:sihpro/AGE/childmarg2.dart';
import 'package:sihpro/AGE/childmarg1.dart';
import 'package:sihpro/AGE/health.dart';

void main() {
  runApp(heal());
}

class heal extends StatelessWidget {
  const heal({super.key});

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
                        image: AssetImage('assests/images/health.png'),
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
                        'The right to health is a fundamental human right emphasizing access to high-quality healthcare, sanitary conditions, and overall well-being. Rooted in international agreements, this right asserts that governments are obligated to establish accessible healthcare systems and address social determinants influencing health. It extends beyond the absence of illness to encompass the presence of conditions essential for a healthy life. Non-discrimination is paramount, ensuring vulnerable groups have equal access. Embraced in global initiatives like the Sustainable Development Goals, the right to health highlights the collective responsibility to build inclusive, equitable healthcare systems and create environments where individuals and communities can thrive physically and mentally.'),
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
                            MaterialPageRoute(builder: (context) => health()))
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
