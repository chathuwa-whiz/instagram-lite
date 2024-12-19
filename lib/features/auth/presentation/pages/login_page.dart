/*
LOGIN PAGE

On this page, an existing user can login with their email and pw

once the user successfully logs in, they will be redirected to home page

if user foesn't have an account yet, they can go to register page from here to create one
 */

import 'package:flutter/material.dart';
import 'package:testproj/features/auth/presentation/components/my_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controllers
  final emailController = TextEditingController();
  final pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                // logo
                Icon(
                  Icons.lock_open_rounded,
                  size: 80,
                  color: Theme.of(context).colorScheme.primary,
                ),

                // welcome back msg
                Text(
                  "Welcome back, you've been missed!",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                // email textfield
                MyTextfield(
                    controller: emailController,
                    hintText: "Email",
                    obscureText: false),

                const SizedBox(height: 10),

                // pw textfield
                MyTextfield(
                  controller: pwController,
                  hintText: "Password",
                  obscureText: true,
                ),

                // login button

                // not a member? register now
              ],
            ),
          ),
        ),
      ),
    );
  }
}
