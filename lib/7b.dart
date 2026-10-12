import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RegistrationForm(),
      ),
    );

class RegistrationForm extends StatefulWidget {
  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final key = GlobalKey<FormState>();

  String gender = "Male";
  String course = "CSE";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Form"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Form(
          key: key,

          child: ListView(
            children: [
              const Icon(
                Icons.person_add,
                size: 60,
                color: Colors.deepPurple,
              ),

              const SizedBox(height: 15),

              Text(
                "Roll No: 24WH1A05L7",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),

              const SizedBox(height: 20),

              field("Name", "Enter name"),

              field("Email", "Enter email"),

              field("Phone", "Enter phone"),

              field("Username", "Enter username"),

              TextFormField(
                obscureText: true,

                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),

                validator: (v) =>
                    v!.length < 6 ? "Minimum 6 characters" : null,
              ),

              const SizedBox(height: 12),

              DropdownButtonFormField<String>(
                value: gender,

                decoration: const InputDecoration(
                  labelText: "Gender",
                  border: OutlineInputBorder(),
                ),

                items: ["Male", "Female"]
                    .map(
                      (x) => DropdownMenuItem(
                        value: x,
                        child: Text(x),
                      ),
                    )
                    .toList(),

                onChanged: (v) {
                  setState(() {
                    gender = v!;
                  });
                },
              ),

              const SizedBox(height: 12),

              DropdownButtonFormField<String>(
                value: course,

                decoration: const InputDecoration(
                  labelText: "Course",
                  border: OutlineInputBorder(),
                ),

                items: ["CSE", "ECE", "EEE"]
                    .map(
                      (x) => DropdownMenuItem(
                        value: x,
                        child: Text(x),
                      ),
                    )
                    .toList(),

                onChanged: (v) {
                  setState(() {
                    course = v!;
                  });
                },
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Registration Successful"),
                      ),
                    );
                  }
                },

                child: const Text("REGISTER"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget field(String name, String error) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),

      child: TextFormField(
        decoration: InputDecoration(
          labelText: name,
          border: const OutlineInputBorder(),
        ),

        validator: (v) => v!.isEmpty ? error : null,
      ),
    );
  }
}