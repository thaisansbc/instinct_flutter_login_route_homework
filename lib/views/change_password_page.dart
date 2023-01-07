import 'package:flutter/material.dart';
import 'package:instict_flutter_login/views/password_change_page.dart';

class ChangePasswordForm extends StatefulWidget {
  const ChangePasswordForm({super.key});

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<ChangePasswordForm> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  passwordChangedRoute() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const PasswordChangedForm()
    ));
  }
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController = TextEditingController();
  bool _passwordVisible        = false;
  bool _confirmPasswordVisible = false;
  bool onPasswordError         = true;
  bool onConfirmPasswordError  = true;
  bool passwordValidate(String password) {
    bool isvalid = ((password != '' && password.length > 5) ? true : false);
    return isvalid;
  }
  bool confirmPasswordValidate(String password, String confirmPassword) {
    bool isvalid = (
        (
            (password != '' && password.length > 5) &&
                (confirmPassword != '' && confirmPassword.length > 5) &&
                (password == confirmPassword)
        ) ? true : false);
    return isvalid;
  }
  @override
  void dispose() {
    passwordController.dispose();
    passwordConfirmController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
    _passwordVisible        = false;
    _confirmPasswordVisible = false;
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
              child: const Text(
                'Change',
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
                  'Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Product_Sans',
                    fontWeight: FontWeight.w500,
                  ),
                )
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(top: 80),
              width: MediaQuery.of(context).size.width,
              child: const Text('NEW PASSWORD',
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
                controller: passwordController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.text,
                obscureText: !_passwordVisible,
                style: const TextStyle(fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  hintText: 'Enter New Password',
                  suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      )
                  ),
                ),
                validator: (value) {
                  onPasswordError = passwordValidate(value!);
                  return null;
                },
                onSaved: (value) {},
              ),
            ),
            !onPasswordError ?
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 0),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.red),
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
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              child: const Text('CONFIRM NEW PASSWORD',
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
                controller: passwordConfirmController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.text,
                obscureText: !_confirmPasswordVisible,
                style: const TextStyle(fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  hintText: 'Enter Confirm Password',
                  suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: IconButton(
                        icon: Icon(
                          _confirmPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            _confirmPasswordVisible = !_confirmPasswordVisible;
                          });
                        },
                      )
                  ),
                ),
                validator: (value) {
                  onConfirmPasswordError = confirmPasswordValidate(passwordController.text, value!);
                  return null;
                },
                onSaved: (value) {},
              ),
            ),
            !onConfirmPasswordError ?
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
                    color: (onConfirmPasswordError ? Colors.grey : Colors.red),
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
                    color: (onConfirmPasswordError ? Colors.grey : Colors.red),
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
                    if (confirmPasswordValidate(passwordController.text, passwordConfirmController.text)) {
                      passwordChangedRoute();
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
                  'Change Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Product_Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}