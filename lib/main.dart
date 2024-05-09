import 'package:chesstip/repositories/friends_repository.dart';
import 'package:chesstip/repositories/user_repository.dart';
import 'package:chesstip/screens/login_signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserRepository()),
        ChangeNotifierProvider(create: (_) => FriendsRepository()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignupLoginScreen(),
      ),
    );
  }
}
