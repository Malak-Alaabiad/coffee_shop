import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:maloooook_coffee_shop/app_style.dart';
import 'package:maloooook_coffee_shop/firebase_options.dart';
import 'package:maloooook_coffee_shop/screens/first_screen.dart';
import 'package:maloooook_coffee_shop/screens/home_screen.dart';
import 'package:maloooook_coffee_shop/screens/login_screen.dart';
import 'package:provider/provider.dart';
import 'package:maloooook_coffee_shop/app_configration_provider.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
 runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
        var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.light,
        darkTheme: MyThemeData.dark,
        themeMode: provider.currentThemeMode,
      home: AuthWrapper(),
    );
  } 
}

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          User? user = snapshot.data;
          if (user == null) {
            return LoginScreen();
          } else {
            return const CoffeeHomeScreen();
          }
        }
        return const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}