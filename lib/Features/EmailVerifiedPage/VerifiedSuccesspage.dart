import 'package:flutter/material.dart';

class VerifiedSuccesspage extends StatefulWidget {
  const VerifiedSuccesspage({super.key});

  @override
  State<VerifiedSuccesspage> createState() => _VerifiedSuccesspageState();
}

class _VerifiedSuccesspageState extends State<VerifiedSuccesspage> {
  @override
  Widget build(BuildContext context) {
    Appconstants.height = MediaQuery.of(context).size.height;
    Appconstants.width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: Appconstants.height,
        width: Appconstants.width,
        child: Column(
          children: [
            Container(
              height: Appconstants.height / 2.12,
              child: Image.asset(
                "assets/images/verified.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Congratulations!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.done_outline,
                  color: Colors.green,
                )
              ],
            )),
            SizedBox(height: 16),
            Text("Your email address has been successfully verified."),
            SizedBox(height: 16),
            Container(
              width: Appconstants.width / 2.14,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerifiedSuccesspage()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Continue"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_circle_right_outlined)
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class Appconstants {
  static double height = 0.0;
  static double width = 0.0;
}
