// ignore_for_file: unrelated_type_equality_checks

import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:iwd23/salah/data/requests/requests.dart';
import 'package:iwd23/salah/viewmodels/login_viewmodel.dart';
import 'package:iwd23/screens/Layout.dart';
import 'package:provider/provider.dart';

import '../models/user.dart';
import '../salah/core/utils/validators.dart';
import 'signin_screen.dart';

const uri = "http://192.168.43.43:5000";

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    Future<List> getUser() async {
      try {
        final res = await http.get(
          Uri.parse("$uri/api/events/all"),
        );

        final user = jsonDecode(res.body) as List;
        print(user);
        return user.map((e) => User.fromMap(e)).toList();
      } catch (e) {
        print(e);
        return [];
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SafeArea(
            child: Center(
              child: Column(children: [
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                      ),
                      children: [
                        TextSpan(
                            text: "Happy", style: TextStyle(color: Colors.red)),
                        TextSpan(text: " to see you back!"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 7),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Connect to your account",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(height: 100),
              Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: TextFormField(
                        validator: Validator.emailValidator,
                        controller: emailController,
                        //obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          fillColor: Colors.grey[100],
                          filled: true,
                          prefixIcon: IconButton(
                            icon: const Icon(Icons.mail),
                            onPressed: () {
                              // action à effectuer lors du clic sur l'icône
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: TextFormField(
                        validator: Validator.passwordlValidator,
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'password',
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          fillColor: Colors.grey[100],
                          filled: true,
                          prefixIcon: IconButton(
                            icon: const Icon(Icons.password),
                            onPressed: () {
                              // action à effectuer lors du clic sur l'icône
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                const SizedBox(height: 41),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: 143,
                    ),
                    const SizedBox(width: 11),
                    const Text(
                      "OR",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(width: 11),
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: 143,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        // Action à exécuter lorsque le bouton est cliqué
                      },
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          width: 55.0,
                          height: 55.0,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                              color: Colors.grey[100],
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Image.asset(
                              'images/googleicone-removebg-preview.png')),
                    ),
                    const SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        // Action à exécuter lorsque le bouton est cliqué
                      },
                      child: Container(
                          padding: const EdgeInsets.all(5),
                          width: 55.0,
                          height: 55.0,
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Image.asset(
                              "images/fbicone-removebg-preview.png")),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        // Action à exécuter lorsque le bouton est cliqué
                      },
                      child: Container(
                          padding: const EdgeInsets.all(5),
                          width: 56.0,
                          height: 56.0,
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Image.asset(
                              'images/appleicone-removebg-preview.png')),
                    ),
                  ],
                ),
                const SizedBox(height: 70),
                TextButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Provider.of<LoginViewModel>(context, listen: false)
                            .login(
                                LoginRequest(
                                  emailController.text.trim(),
                                  passwordController.text.trim(),
                                ),
                                context);
                      }
                    },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        fixedSize: const Size(300, 50),
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                    child: const Text("Continue")),
                // FutureBuilder(
                //     future: getUser(),
                //     builder: (context, snapshot) {
                //       if (snapshot.hasData) {
                //         List<User>? users = snapshot.data;
                //         return TextButton(
                //           onPressed: () async {
                //             if (users!.contains(emailController.text)) {
                //               if (passwordController.text ==users![0].password) {
                //                 Navigator.pushReplacement(
                //                     context,
                //                     MaterialPageRoute(
                //                         builder: (_) => LayoutScreen()));
                //               }
                //             }
                //           },
                //           child: const Text("Continue"),
                //           style: TextButton.styleFrom(
                //               fixedSize: const Size(300, 50),
                //               primary: Colors.white,
                //               backgroundColor: Colors.red,
                //               shape: RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(10.0))),
                //         );
                //       } else {
                //         return TextButton(onPressed: (){}, child: const Text("Continue"),
                //           style: TextButton.styleFrom(
                //               fixedSize: const Size(300, 50),
                //               primary: Colors.white,
                //               backgroundColor: Colors.red,
                //               shape: RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(10.0))), );
                //       }
                //     }),
                const SizedBox(height: 30),
                RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account ? ',
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Register now',
                          style: const TextStyle(
                            color: Colors.red,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const SigninScreen()));
                            }),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
