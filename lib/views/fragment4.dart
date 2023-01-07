import 'package:flutter/material.dart';

class FourthPageFragment extends StatefulWidget {
  const FourthPageFragment({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FourthPageFragmentState();
}

class _FourthPageFragmentState extends State<FourthPageFragment> {
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
                'Fourth Page',
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