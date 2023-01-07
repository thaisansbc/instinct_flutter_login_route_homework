import 'package:flutter/material.dart';
import 'home_page.dart';

class PasswordChangedForm extends StatefulWidget {
  const PasswordChangedForm({super.key});

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<PasswordChangedForm> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  homePageRoute() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const HomePageForm()
    ));
  }
  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(top: 120),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Product_Sans',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                margin: const EdgeInsets.only(top: 0),
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'Changed!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Product_Sans',
                    fontWeight: FontWeight.w500,
                  ),
                )
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              margin: const EdgeInsets.only(top: 0),
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/images/img4.png'),
            ),
            Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                child: SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () { homePageRoute(); },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFFBD2F),
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25), // <-- Radius
                      ),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Product_Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}