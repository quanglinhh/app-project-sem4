import 'package:flutter/material.dart';
import 'package:hospital_app/core/colors/custom-color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _login() {
    // Xử lý đăng nhập ở đây dựa trên thông tin từ _usernameController và _passwordController.
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
                    'Welcome',
                    style: TextStyle(fontSize: 40, color: CustomColor.primaryColor),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Sign In',
                    style: TextStyle(fontSize: 40),
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
                      child: Text('Username',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30))),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(fontSize: 20),
                      labelText: 'Enter your username',
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
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.primaryColor,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(350, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Container(
                    margin: EdgeInsets.only(top: 20,bottom: 20),
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            TextButton(
              onPressed: () {
                // Xử lý khi người dùng nhấn vào "Don't have an account? Sign up"
                // Chuyển đến màn hình đăng ký ở đây
              },
              child: Text(
                "Don't have an account? Sign up",
                style: TextStyle(fontSize: 20, color: CustomColor.primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
