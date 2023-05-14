import 'package:flutter/material.dart';
import 'package:iwd23/screens/login_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(children: [
              const SizedBox(height: 40),
              Image.asset('images/carte1.png'),
              const SizedBox(height: 30),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                  ),
                  children: [
                    TextSpan(text: "Create an "),
                    TextSpan(
                        text: "account", style: TextStyle(color: Colors.red)),
                    TextSpan(text: " to start a brand new "),
                    TextSpan(
                        text: "adventure!",
                        style: TextStyle(color: Colors.red)),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // Text(
              //     textAlign: TextAlign.center,
              //     "By continuing, I agree to the terms of use and privacy policy.",
              //     style: TextStyle(color: Colors.grey, fontSize: 12)),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: "By continuing, you agree to the ",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'terms of use and privacy policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Image.asset("images/googleicone-removebg-preview.png",
                    height: 24.0),
                label: const Text('Continue with Google'),
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.black,
                    fixedSize: const Size(250, 47),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0))),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => const LoginScreen()));
                    },
                    child: Container(
                      width: 55.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 172, 167, 167),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: const Icon(
                        Icons.mail,
                        color: Colors.white,
                        size: 32.0,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  InkWell(
                    onTap: () {
                      // Action à exécuter lorsque le bouton est cliqué
                    },
                    child: Container(
                      width: 55.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 172, 167, 167),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: const Icon(
                        Icons.facebook,
                        color: Colors.white,
                        size: 32.0,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      // Action à exécuter lorsque le bouton est cliqué
                    },
                    child: Container(
                      width: 56.0,
                      height: 56.0,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 172, 167, 167),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Icon(
                        Icons.apple,
                        color: Colors.white,
                        size: 32.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              RichText(
                text: const TextSpan(
                  text: 'Vous avez déjà un compte ? ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Se connecter',
                      style: TextStyle(
                        color: Colors.orange,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
