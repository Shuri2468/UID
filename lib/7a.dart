// ignore_for_file: file_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistrationForm(),
    );
  }
}

// Registration Form
class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  String gender = "Male";
  String course = "CSE";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Form - 24WH1A05L7"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Column(
              children: [
                // Name
                const TextField(
                  decoration: InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                
                // Email
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                
                // Phone Number
                const TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                
                // Username
                const TextField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                
                // Password
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                
                // Gender
                DropdownButtonFormField<String>(
                  value: gender,
                  decoration: const InputDecoration(
                    labelText: "Gender",
                    border: OutlineInputBorder(),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: "Male",
                      child: Text("Male"),
                    ),
                    DropdownMenuItem(
                      value: "Female",
                      child: Text("Female"),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
                const SizedBox(height: 10),
                
                // Course
                DropdownButtonFormField<String>(
                  value: course,
                  decoration: const InputDecoration(
                    labelText: "Course",
                    border: OutlineInputBorder(),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: "CSE",
                      child: Text("CSE"),
                    ),
                    DropdownMenuItem(
                      value: "ECE",
                      child: Text("ECE"),
                    ),
                    DropdownMenuItem(
                      value: "EEE",
                      child: Text("EEE"),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      course = value!;
                    });
                  },
                ),
                const SizedBox(height: 15),
                
                // Register button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50), // Makes button full width
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Registration submitted successfully!"),
                      ),
                    );
                  },
                  child: const Text("Register"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
