import 'package:flutter/material.dart';
import 'package:hospital_app/core/colors/custom-color.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<StatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _signUp() {

  }
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  Text(
                    'Create a new account',
                    style: TextStyle(fontSize: 30, color: CustomColor.primaryColor),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Full Name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30))),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _fullNameController,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(fontSize: 20),
                      labelText: 'Enter your full name',
                      filled: true,
                      fillColor: CustomColor.inputBackgroundColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Email',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30))),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(fontSize: 20),
                      labelText: 'Enter your email',
                      filled: true,
                      fillColor: CustomColor.inputBackgroundColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Password',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30))),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(fontSize: 20),
                      labelText: 'Password',
                      filled: true,
                      fillColor: CustomColor.inputBackgroundColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                        child: Icon(
                          _obscurePassword ? Icons.visibility_off : Icons.visibility,
                          color: CustomColor.primaryColor,
                          size: 30,
                        ),
                      ),
                    ),
                    obscureText: _obscurePassword,
                  ),
                ],
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: ElevatedButton(
                  onPressed: _signUp,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.primaryColor,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(350, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Container(
                    margin: EdgeInsets.only(top: 20,bottom: 20),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextButton(
              onPressed: () {
                // Xử lý khi người dùng nhấn vào "Already have an account? Sign in"
                // Chuyển đến trang đăng nhập ở đây
              },
              child: Text(
                "Already have an account? Sign in",
                style: TextStyle(fontSize: 16, color: CustomColor.primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
