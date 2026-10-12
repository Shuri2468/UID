import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main() {
 runApp(const MyApp());
}


class MyApp extends StatelessWidget {
 const MyApp({super.key});


 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: const UserPage(),
   );
 }
}


class UserPage extends StatefulWidget {
 const UserPage({super.key});


 @override
 State<UserPage> createState() => _UserPageState();
}


class _UserPageState extends State<UserPage> {
 List<dynamic> users = [];


 @override
 void initState() {
   super.initState();
   fetchUsers();
 }


 Future<void> fetchUsers() async {
   final response = await http.get(
     Uri.parse('https://jsonplaceholder.typicode.com/users'),
   );


   if (response.statusCode == 200) {
     setState(() {
       users = jsonDecode(response.body);
     });
   }
 }


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('User List - 24WH1A05L7'),
     ),
     body: ListView.builder(
       itemCount: users.length,
       itemBuilder: (context, index) {
         return ListTile(
           title: Text(users[index]['name']),
           subtitle: Text(users[index]['email']),
         );
       },
     ),
   );
 }
}
