import 'package:flutter/material.dart';
import 'package:simple_chat/widgets/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static String id = 'LoginView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginBody(),
    );
  }
}
