import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/cart_provider.dart';
import 'package:shop_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
          title: "Shopping App",
          theme: ThemeData(
            inputDecorationTheme: const InputDecorationTheme(
                hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
            // appBarTheme: const AppBarTheme(
            //     titleTextStyle: TextStyle(
            //   fontSize: 20,
            //   fontWeight: FontWeight.bold,
            // )),
            textTheme: const TextTheme(
              titleMedium: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              bodySmall: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            useMaterial3: true,
          ),
          home: const HomePage()),
    );
  }
}