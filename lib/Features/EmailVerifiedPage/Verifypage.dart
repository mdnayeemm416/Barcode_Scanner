import 'package:barcode_scanner/Features/EmailVerifiedPage/VerifiedSuccesspage.dart';
import 'package:flutter/material.dart';

class EmailVerifiedPage extends StatefulWidget {
  const EmailVerifiedPage({super.key});

  @override
  State<EmailVerifiedPage> createState() => _EmailVerifiedPageState();
}

class _EmailVerifiedPageState extends State<EmailVerifiedPage> {
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: Height,
        width: Width,
        child: Column(
          children: [
            Container(
              height: Height / 2.12,
              child: Image.asset(
                "assets/images/mail.png",
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "To complete your registration, please click the verification link we sent to your email address.",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text("Email: user@example.com"),
            SizedBox(height: 16),
            Container(
              width: Width / 2.14,
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
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Continue to the next step
              },
              child: Text("Resend Verification Link"),
            ),
          ],
        ),
      ),
    );
  }
}
