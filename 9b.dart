import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'src/screens/home_screen.dart';


void main() {
 runApp(const MainApp());
}


class MainApp extends StatelessWidget {
 const MainApp({super.key});


 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(
       useMaterial3: true,
       colorScheme: ColorScheme.fromSeed(
         seedColor: Colors.teal,
       ),
       textTheme: GoogleFonts.lobsterTwoTextTheme(
         ThemeData.light().textTheme,
       ),
     ),
     home: const HomeScreen(),
   );
 }
}


lib/src/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'src/screens/home_screen.dart';


void main() {
 runApp(const MainApp());
}


class MainApp extends StatelessWidget {
 const MainApp({super.key});


 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(
       useMaterial3: true,
       colorScheme: ColorScheme.fromSeed(
         seedColor: Colors.teal,
       ),
       textTheme: GoogleFonts.lobsterTwoTextTheme(
         ThemeData.light().textTheme,
       ),
     ),
     home: const HomeScreen(),
   );
 }
}


lib/src/services/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
class ApiService {
 Future<List<dynamic>> fetchUsers() async {
   final response = await http.get(
     Uri.parse('https://jsonplaceholder.typicode.com/posts'));


   if (response.statusCode == 200) {
     return jsonDecode(response.body);
   } else {
     throw Exception('Failed to load users');
   }
 }
}
