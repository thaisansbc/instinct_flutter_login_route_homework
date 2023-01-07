import 'package:flutter/material.dart';
import 'package:instict_flutter_login/views/login_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: const LoginForm(),
    );
  }
}
