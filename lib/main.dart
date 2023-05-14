

import 'package:flutter/material.dart';
import 'package:iwd23/myProvider.dart';
import 'package:iwd23/salah/di.dart';
import 'package:iwd23/salah/viewmodels/login_viewmodel.dart';
import 'package:iwd23/salah/viewmodels/register_viewmodel.dart';
import 'package:iwd23/salah/viewmodels/user_viewmodel.dart';
import 'package:iwd23/screens/Layout.dart';
import 'package:iwd23/screens/home_screen.dart';
import 'package:iwd23/screens/login_screen.dart';
import 'package:iwd23/screens/pageView/p_view.dart';
import 'package:provider/provider.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await initDI();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.debugCheckInvalidValueType = null;


    return MultiProvider(
        providers: [
          Provider(create: (_) => MyProvider()),
          Provider<UserViewModel>(create: (_)=>UserViewModel(instance())),
          Provider<LoginViewModel>(create: (_)=>LoginViewModel(instance())),
          Provider<RegisterViewModel>(create: (_)=>RegisterViewModel(instance())),
        ],
        builder: (context, child) {
          final UserViewModel userViewModel = Provider.of<UserViewModel>(context);

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'Outfit',
            ),
            //home: PostPage(),
            title: 'Flutter App',
            home:  userViewModel.authenticated
                ? const  LayoutScreen()
                : (userViewModel.showOnBoarding
                ?  Page_View()
                : const LoginScreen()
            ),
          );
        });
  }
]
}

