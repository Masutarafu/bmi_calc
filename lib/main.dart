import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  // const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
          foregroundColor: Colors.white, // Text and icon color
          elevation: 4, // Shadow depth
          centerTitle: true, // Center the title
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/results': (context) => ResultsPage(
              bmiResult: 'Normal',
              resultText: 'Normal',
              interpretation: 'Normal',
            ),
      },
    );
  }
}
