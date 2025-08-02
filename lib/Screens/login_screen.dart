import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/login_image.png', scale: 5),
              SizedBox(height: screenHeight * 0.02),
              const Text(
                'Login',
                style: TextStyle(
                  color: Color(0xff36454F),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 41),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Email',
                        style: TextStyle(
                          color: Color(0xff36454F),
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email is required';
                          } else if (!value.contains('@')) {
                            return 'Enter a valid email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffD3D3D3),
                          hintText: 'xyz@gmail.com',
                          hintStyle: const TextStyle(color: Color(0xff36454F)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Text(
                        'Password',
                        style: TextStyle(
                          color: Color(0xff36454F),
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      TextFormField(
                        controller: _passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is required';
                          } else if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffD3D3D3),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>const HomeScreen()),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFF7F50),
                  foregroundColor: Colors.white,
                  minimumSize: Size(288, 46),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(color: Color(0xffD3D3D3), fontSize: 18),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),

              Text(
                'Forgot Password?',
                style: TextStyle(color: Color(0xff36454F), fontSize: 14),
              ),
              SizedBox(height: screenHeight * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Log in With',
                    style: TextStyle(color: Color(0xff36454F), fontSize: 18),
                  ),
                  SizedBox(width: screenWidth * 0.05),
                  Image.asset('assets/logo_google.png'),
                  SizedBox(width: screenWidth * 0.02),
                  Image.asset('assets/logo_facebook.png'),
                  SizedBox(width: screenWidth * 0.02),
                  Image.asset('assets/logo_github.png'),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              Container(height: 2, width: 300, color: Color(0xffD9D9D9)),
              SizedBox(height: screenHeight * 0.03),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      style: TextStyle(color: Color(0xff36454F)),
                      text: 'No account? ',
                    ),
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(color: Color(0xffFF7F50)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
