import 'package:flutter/material.dart';
import 'package:sonno/constants.dart';
import 'package:sonno/main_profile.dart';
import 'package:sonno/pages/loading_screen.dart';
import 'network.dart';
import 'pages/pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Network.initApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sonno',
      theme: ThemeData.dark().copyWith(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        scaffoldBackgroundColor: kPrimaryBgColor,
        backgroundColor: kPrimaryColor,
        toggleableActiveColor: kPrimarySelectionColor,
        accentColor: kPrimarySelectionColor,
        unselectedWidgetColor: kPrimaryTextColor,
        bottomAppBarColor: kPrimaryColor,
        primaryColor: kPrimaryColor,
        buttonColor: kPrimarySelectionColor,
        cardColor: kPrimaryColor,
        secondaryHeaderColor: kPrimaryColor,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: kPrimaryColor,
        ),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        kLoginPageRoute: (context) => LoadingScreen<bool>(
          future: MainProfile.signedIn,
          func: (isSignedIn) {
            if(isSignedIn)
              return openHomePage();
            return LoginPage();
          },
        ),
        kHomePageRoute: (context) => openHomePage(),
      },
    );
  }
}
