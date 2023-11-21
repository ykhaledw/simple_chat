import 'package:flutter/material.dart';
import 'package:simple_chat/widgets/register_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  static String id = 'RegisterView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RegisterBody(),
    );
  }
}


