import 'package:flutter/material.dart';

class FirstPageFragment extends StatefulWidget {
  const FirstPageFragment({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FirstPageFragmentState();
}

class _FirstPageFragmentState extends State<FirstPageFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 0),
              child: const Text(
                'Home Page',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Product_Sans',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 50),
                child: const Text(
                  'Username: usrn_thean',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Product_Sans',
                    fontWeight: FontWeight.w500,
                  ),
                )
            ),
            Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  'Password: usrp@12345',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Product_Sans',
                    fontWeight: FontWeight.w500,
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}