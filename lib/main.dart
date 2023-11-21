import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:simple_chat/firebase_options.dart';
import 'package:simple_chat/views/chat_view.dart';
import 'package:simple_chat/views/login_view.dart';
import 'package:simple_chat/views/register_view.dart';
//import 'package:simple_chat/views/login_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const SimpleChat());
}

class SimpleChat extends StatelessWidget {
  const SimpleChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginView.id : (context) => LoginView(),
        RegisterView.id : (context) => RegisterView(),
        ChatView.id : (context) => ChatView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      initialRoute: LoginView.id,
    );
  }
}
