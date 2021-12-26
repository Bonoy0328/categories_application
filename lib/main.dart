import 'package:categories_application/category_meals_screen.dart';
import 'package:flutter/material.dart';
import 'categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        colorScheme: const ColorScheme(
          primary: Colors.blue,
          primaryVariant: Colors.black,
          onPrimary: Colors.white,
          secondary: Colors.purple,
          secondaryVariant: Colors.teal,
          onSecondary: Colors.green,
          surface: Colors.amber,
          onSurface: Colors.blueGrey,
          background: Color.fromRGBO(255, 254, 229, 1),
          onBackground: Colors.black,
          error: Colors.lime,
          onError: Colors.red,
          brightness: Brightness.light,
        ),
      ),
      // home: const CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
      },
    );
  }
}
