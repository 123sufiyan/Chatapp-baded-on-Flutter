import 'package:chatapp_flutter/pagess/auth/login_page.dart';
import 'package:chatapp_flutter/service/auth_service.dart';
import 'package:chatapp_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                authService.signOut();
                nextScreenReplace(context, LoginPage());
              },
              child: Text("LOGOUT"))),
    );
  }
}
