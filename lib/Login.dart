import 'package:ass7/Search.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: ListView(
          children: [
            Image(
                image: NetworkImage(
                    "https://play-lh.googleusercontent.com/5e7z5YCt7fplN4qndpYzpJjYmuzM2WSrfs35KxnEw-Ku1sClHRWHoIDSw3a3YS5WpGcI")),
            Divider(
              height: 30,
            ),
            Text(
              textAlign: TextAlign.center,
              "Sign in",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              height: 10,
            ),
            TextField(
              controller: TextEditingController(),
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'User Name'),
            ),
            Divider(
              height: 5,
            ),
            TextField(
              obscureText: true,
              controller: TextEditingController(),
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Password'),
            ),
            TextButton(onPressed: () {}, child: Text("Forget Password")),
            ElevatedButton.icon(
                onPressed: (() {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Search();
                    }));
                  });
                }),
                icon: Icon(Icons.login),
                label: Text(
                  "Login",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
