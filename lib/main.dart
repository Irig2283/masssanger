import 'package:chatapp/screen/chat_screen.dart';
import 'package:chatapp/screen/login_screen.dart';
import 'package:chatapp/screen/registration_screen.dart';
import 'package:chatapp/screen/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen()
      },
    );
  }
}
