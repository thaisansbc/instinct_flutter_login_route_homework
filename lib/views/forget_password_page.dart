import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instict_flutter_login/views/verification_page.dart';
import 'package:instict_flutter_login/views/login_page.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<ForgotPasswordForm> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  loginRoute() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const LoginForm()
    ));
  }
  verificationRoute() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const VerificationForm()
    ));
  }
  final TextEditingController emailController = TextEditingController();
  bool onError = true;
  bool emailValidate(String email) {
    bool isvalid = EmailValidator.validate(email);
    return isvalid;
  }
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(top: 85),
              width: MediaQuery.of(context).size.width,
              child: const Text('Forgot',
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
              child: const Text('Password?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Product_Sans',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(top: 80),
              width: MediaQuery.of(context).size.width,
              child: const Text('EMAIL',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Product_Sans',
                  fontWeight: FontWeight.w100,
                  color: Color(0xff8B8989),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                controller: emailController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(fontWeight: FontWeight.w500),
                decoration: const InputDecoration(
                  hintText: 'Enter Email',
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 0),
                    child: Icon(Icons.mail_outline),
                  ),
                  border: InputBorder.none,
                ),
                validator: (value) {
                  onError = emailValidate(value!);
                  return null;
                },
                onSaved: (value) {},
              ),
            ),
            !onError ?
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 0),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.red),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Please provide your email to reset your password, please don’t share any data to other people.',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontFamily: 'Product_Sans',
                    fontSize: 12,
                    color: (onError ? Colors.grey : Colors.red),
                  ),
                ),
              ),
            ) :
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 0),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Please provide your email to reset your password, please don’t share any data to other people.',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontFamily: 'Product_Sans',
                    fontSize: 12,
                    color: (onError ? Colors.grey : Colors.red),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () async {
                  setState(() {
                    onError = emailValidate(emailController.text);
                    if (onError) {
                      verificationRoute();
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
                  'Reset Password',
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
                          text: 'Remember now? ',
                          style: const TextStyle(color: Colors.black, fontFamily: 'Product_Sans'),
                          children: [
                            TextSpan(
                              text: 'Login here',
                              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w800, fontFamily: 'Product_Sans'),
                              recognizer: TapGestureRecognizer()..onTap = () => loginRoute(),
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