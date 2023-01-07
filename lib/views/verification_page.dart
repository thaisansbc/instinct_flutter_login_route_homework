import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:instict_flutter_login/views/change_password_page.dart';

class VerificationForm extends StatefulWidget {
  const VerificationForm({super.key});

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<VerificationForm> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  changePasswordRoute() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const ChangePasswordForm()
    ));
  }
  bool _onEditing = true;
  String? _code;
  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(top: 80),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'Code',
                textAlign: TextAlign.left,
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
                  'Verification',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Product_Sans',
                    fontWeight: FontWeight.w500,
                  ),
                )),
            VerificationCode(
              margin: const EdgeInsets.only(left: 12, right: 12, top: 150, bottom: 12),
              textStyle:
              Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.black, fontFamily: 'Product Sans', fontSize: 24),
              keyboardType: TextInputType.number,
              underlineColor: Colors.black,
              length: 4,
              cursorColor: Colors.blue,
              // clearAll: Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text(
              //     'Clear all',
              //     style: TextStyle(
              //         fontSize: 18.0,
              //         fontFamily: 'Product_Sans',
              //         decoration: TextDecoration.underline,
              //         color: Colors.blue[700]),
              //   ),
              // ),
              onCompleted: (String value) async {
                setState(() {
                  _code = value;
                });
              },
              onEditing: (bool value) {
                setState(() {
                  _onEditing = value;
                });
                if (!_onEditing) FocusScope.of(context).unfocus();
              },
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Center(
            //     child: _onEditing
            //         ? const Text('Please enter full code')
            //         : Text('Your code: $_code'),
            //   ),
            // ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () async {
                  setState(() {
                    if (_code != null && _code != "" && _code.toString().length == 4) {
                      changePasswordRoute();
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFFBD2F),
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // <-- Radius
                  ),
                ),
                child: const Text(
                  'Verification',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Product_Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                margin: const EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: RichText(
                      text: TextSpan(
                          text: 'Did’t receive the code? ',
                          style: const TextStyle(color: Colors.black, fontFamily: 'Product_Sans'),
                          children: [
                            TextSpan(
                              text: 'Re-send (32)',
                              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w800, fontFamily: 'Product_Sans'),
                              // ignore: avoid_returning_null_for_void
                              recognizer: TapGestureRecognizer()..onTap = () => null,
                            )
                          ]
                      ),
                    )
                )
            ),
            Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                margin: const EdgeInsets.only(top: 220),
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: RichText(
                      text: TextSpan(
                        text: 'Need help?',
                        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w800, fontFamily: 'Product_Sans'),
                        // ignore: avoid_returning_null_for_void
                        recognizer: TapGestureRecognizer()..onTap = () => null,
                      )
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}