import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instict_flutter_login/views/register_page.dart';
import 'package:instict_flutter_login/views/forget_password_page.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  forgotPasswordRoute() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const ForgotPasswordForm()
    ));
  }
  registerRoute() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const RegisterForm()
    ));
  }
  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(top: 80),
              width: MediaQuery.of(context).size.width,
              child: const Text('Login to',
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
              child: const Text('find the best food',
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
              margin: const EdgeInsets.only(top: 85),
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
              child: const TextField(
                style: TextStyle(fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  suffixIcon: Icon(Icons.mail_outline),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),//<-- SEE HERE
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff000000)),//<-- SEE HERE
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 66, 125, 145)),//<-- SEE HERE
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              child: const Text('PASSWORD',
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
              child: const TextField(
                obscureText: true,
                style: TextStyle(fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  suffixIcon: Icon(Icons.lock),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),//<-- SEE HERE
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff000000)),//<-- SEE HERE
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 66, 125, 145)),//<-- SEE HERE
                  ),
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 130,
                  child: ElevatedButton(
                      onPressed: () {
                        forgotPasswordRoute();
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        backgroundColor: Colors.red.withOpacity(0),
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      ),
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text('Forgot Password?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Product_Sans',
                          ),
                        ),
                      )
                  ),
                )
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFFBD2F),
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // <-- Radius
                  ),
                ),
                child: const Text(
                  'Sign in',
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
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              width: MediaQuery.of(context).size.width,
              child: TextButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  backgroundColor: Colors.red.withOpacity(0),
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                  side: const BorderSide(
                    width: 1.5,
                    color: Colors.black,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // <-- Radius
                  ),
                ),
                label: const Text(
                  'Sign up with Facebook',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Product_Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                icon: const Icon(Icons.facebook),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                margin: const EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: RichText(
                      text: TextSpan(
                          text: 'Don’t have an account? ',
                          style: const TextStyle(color: Colors.black, fontFamily: 'Product_Sans'),
                          children: [
                            TextSpan(
                              text: 'Register',
                              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w800, fontFamily: 'Product_Sans'),
                              recognizer: TapGestureRecognizer()..onTap = () => registerRoute(),
                            )
                          ]
                      ),
                    )
                )
            ),
          ],
        ),
      ),
    );
  }
}