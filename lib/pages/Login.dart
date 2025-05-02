import 'package:flutter/material.dart';
import 'package:test/pages/home.dart';
import 'package:test/pages/signup.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            // Background image
            Positioned(
              top: -100,
              left: 100,
              right: 100,
              child: Image.asset(
                "assets/images/coffee.PNG",
                width: 300,
                height: 250,
              ),
            ),

            // Form content
            Positioned(
              top: 200,
              left: 20,
              right: 20,
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Page title
                      const Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      // Welcome text
                      const Text(
                        "We've already met!",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),

                      const SizedBox(height: 50),

                      // Phone number input
                      SizedBox(
                        child: TextFormField(
                          controller: _phoneController,
                          validator: (value) => value!.isEmpty
                              ? "Please enter your phone number"
                              : null,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            labelText: "Phone Number *",
                            prefixIcon: Icon(Icons.phone_android),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      // Password input
                      SizedBox(
                        child: TextFormField(
                          controller: _passwordController,
                          validator: (value) => value!.isEmpty
                              ? "Please enter your password"
                              : null,
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: "Password *",
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility_off),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),

                      // Forgot password button
                      TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {}
                        },
                        child: const Text(
                          "Forgot password?",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFBEA764),
                          ),
                        ),
                      ),

                      const SizedBox(height: 50),

                      // Sign in button
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.of(context)
                                  .push(
                                    MaterialPageRoute(
                                      builder: (context) => Home(
                                        phoneNumber: _phoneController.text,
                                      ),
                                    ),
                                  )
                                  .then((value) {
                                _phoneController.clear();
                                _passwordController.clear();
                              });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown[700],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                
                            children: [
                  
                              
                              Container(
                              padding: const EdgeInsets.only(left: 130),
                                child: Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                ),
                              ),

      
                              
                              Container(
                                padding: const EdgeInsets.only(left: 90),
                                child: const CircleAvatar(
                                backgroundColor: Colors.white24, // Light overlay background
                                radius: 15, // Adjust size as needed
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                ),
                              ),
                              
                            ],
                          ),
                        ),
                      ),

                      // Sign up link
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.black),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Signup(),
                                ),
                              );
                            },
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

        // Home button
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.brown,
          child: const Icon(Icons.home, size: 30, color: Colors.white),
        ),
      ),
    );
  }
}
