import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Image.asset('assets/carImage.png',
              width: 250,
              height: 250,),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 20),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    hintText: "Email",
                    labelText: "Email"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 20),
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                maxLength: 8,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                        ),
                        hintText: "Password",
                        labelText: "Password"
                        ),
              ),
            ),
            Container(
              width: 320,
              margin: const EdgeInsets.only(top: 10),
              child: ElevatedButton(onPressed: () {
              },
              style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.blue)), 
              child: const Text("Login"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
