import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'login_screen.dart';
import 'registration.dart';
import 'chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

       initialRoute: WelcomeScreen.id,
       routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
         LoginScreen.id : (context) => LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
         ChatScreen.id :(context) =>  const ChatScreen(),
       },
       // home: WelcomeScreen(),
    );
  }
}
