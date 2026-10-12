import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        scaffoldBackgroundColor:
            const Color.fromARGB(255, 227, 240, 165),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 230, 89, 238),
          foregroundColor: Color.fromARGB(255, 40, 40, 208),
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 243, 33, 138),
          ),
          headlineMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 158, 206, 160),
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 176, 111, 107),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 216, 81, 9),
            foregroundColor: const Color.fromARGB(255, 1, 1, 1),
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
            '24WH1A05L7-Styling with Themes and Custom Styles'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Red Headline",
                style: theme.textTheme.headlineLarge),
            const SizedBox(height: 20),
            Text("Green Headline",
                style: theme.textTheme.headlineMedium),
            const SizedBox(height: 20),
            Text("Brown Body Text",
                style: theme.textTheme.bodyLarge),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Themed Button"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 39, 219, 219),
                foregroundColor:
                    const Color.fromARGB(255, 0, 0, 0),
              ),
              child: const Text("Custom Colored Button"),
            ),
          ],
        ),
      ),
    );
  }
}