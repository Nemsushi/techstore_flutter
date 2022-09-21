import 'package:flutter/material.dart';
import 'package:techstore_flutter/utils/routes.dart';
import 'package:techstore_flutter/widgets/themes.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     themeMode: ThemeMode.light,
     theme: MyTheme.lightTheme(context),
     darkTheme:MyTheme.dartTheme(context),

     debugShowCheckedModeBanner: false,
     initialRoute: MyRoutes.homeRoute,
     routes: {
      "/":(context) => LoginPage(),
      MyRoutes.homeRoute:(context) => HomePage(),
      MyRoutes.loginRoute:(context) => LoginPage(),
     },
    );
  }
}