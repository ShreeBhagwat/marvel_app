import 'package:flutter/material.dart';
import 'package:marvel_app/screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: FirebaseAuth.instance.currentUser == null
      //     ? LoginScreen()
      //     : UsersScreen(),
      home: LoginScreen(),
    );
  }
}
