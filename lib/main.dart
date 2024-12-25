import 'dart:io';
import 'package:cinemate/firebase_options.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemate/views/theme/theme.dart';
import 'package:cinemate/constants/strings.dart';
import 'package:cinemate/services/shared_preferences.dart';
import 'package:cinemate/views/screens/home_screen/home_screen.dart';
import 'package:cinemate/views/screens/on_boarding_screens/on_boarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'views/screens/auth/login_screen.dart';
import 'services/auth_service.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then(
    (value) => runApp(
      DevicePreview(
        enabled: false,
        builder: (context) => const ProviderScope(
          child: MyApp(),
        ), // Wrap your app
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 Future<Widget> checkIfOpenedBefore() async {
  bool openedBefore = await SharedPreferenceServiceImpl().ifOpenedBefore();
  final user = FirebaseAuthService().currentUser;

  if (user != null) {
    // User is already authenticated
    return const HomeScreen();
  } else {
    // User is not authenticated
    return const LoginScreen();
  }
}


  @override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    locale: DevicePreview.locale(context),
    builder: DevicePreview.appBuilder,
    title: appName,
    theme: theme(),
    home: FutureBuilder(
      future: checkIfOpenedBefore(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Show a loading spinner while determining the screen to show
          return const Center(
            child: CircularProgressIndicator(color: darkAccent),
          );
        } else if (snapshot.hasData) {
          return snapshot.data as Widget;
        } else {
          // Fallback in case of error
          return const LoginScreen();
        }
      },
    ),
  );
}
}
