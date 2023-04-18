import 'package:flutter/material.dart';
import 'package:invoice_app/invoice_Screen/Add_cart.dart';
import 'package:invoice_app/invoice_Screen/Ditail_page.dart';
import 'package:invoice_app/invoice_Screen/Home_Screen.dart';
import 'package:invoice_app/invoice_Screen/Home_decoration.dart';
import 'package:invoice_app/invoice_Screen/Splash_Screen.dart';
import 'package:invoice_app/invoice_Screen/jwallary.dart';
import 'package:invoice_app/invoice_Screen/laptop_Screen.dart';
import 'package:invoice_app/invoice_Screen/smart_phone.dart';

void main() {
  runApp(const invoice_app());
}

class invoice_app extends StatefulWidget {
  const invoice_app({Key key}) : super(key: key);

  @override
  State<invoice_app> createState() => _invoice_appState();
}

class _invoice_appState extends State<invoice_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          textTheme: TextTheme(
            // bodyMedium: GoogleFonts.merriweather(),
          )
      ),
      initialRoute: 'splash_screen',
      routes: {
        '/': (context) => Home_screen(),
         'smartphone_page': (context) =>  Smart_phone(),
        'laptop_page': (context) => Laptop(),
        'fragrances_page': (context) => jwallary(),
        'home_decoration_page': (context) =>  Home_decoration(),
         'details_page': (context) => Ditail_page(),
         'add_cart_page': (context) => add_cart(),
        'splash_screen': (context) =>  SplashScreen(),
      },
    );
  }
}
