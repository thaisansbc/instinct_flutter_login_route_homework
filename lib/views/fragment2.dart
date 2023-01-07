import 'package:flutter/material.dart';

class SecondPageFragment extends StatefulWidget {
  const SecondPageFragment({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SecondPageFragmentState();
}

class _SecondPageFragmentState extends State<SecondPageFragment> {
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
                'Second Page',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Product_Sans',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}