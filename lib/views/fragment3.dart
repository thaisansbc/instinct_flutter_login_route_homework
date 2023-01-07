import 'package:flutter/material.dart';

class ThirdPageFragment extends StatefulWidget {
  const ThirdPageFragment({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ThirdPageFragmentState();
}

class _ThirdPageFragmentState extends State<ThirdPageFragment> {
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
                'Third Page',
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