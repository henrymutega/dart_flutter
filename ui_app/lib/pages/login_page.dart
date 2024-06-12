import 'package:flutter/material.dart';
import 'package:ui_app/pages/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: ListView(children: [
            const SizedBox(height: 25),
            //Logo
            const Icon(
              Icons.lock,
              size: 50,
            ),
            const SizedBox(height: 25),

            //Welcome back we have missed you
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome back we have missed you!',
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 25),

            //username textfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: 'Username',
                ),
              ),
            ),
            const SizedBox(height: 5),

            //Password textfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey[500]),
                ),
              ),
            ),

            //Forgot password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot Password',
                      style: TextStyle(color: Colors.grey[700])),
                ],
              ),
            ),
            const SizedBox(height: 25),

            //signin button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.black),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => HomePage()),
                    // );
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            //
            const SizedBox(height: 30),

            //Other Login options
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey[500],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),

            //Other Login Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/images/facebook.png',
                  height: 50,
                ),
                const SizedBox(width: 25),
                Image.asset(
                  'lib/images/facebook.png',
                  height: 50,
                ),
              ],
            ),
            const SizedBox(height: 25),
            // If not a member register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Are you registered?'),
                SizedBox(width: 10),
                Text('Register', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
