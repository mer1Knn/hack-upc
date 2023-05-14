







import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../enums/enums.dart';




extension ContextExtension on BuildContext{
  Color get scaffoldBgColor => Theme.of(this).scaffoldBackgroundColor;

  void pushReplacement(Widget page) => Navigator.of(this)
      .pushReplacement(MaterialPageRoute(builder: (_) => page));

  void pushNamed(routeName,{arguments})=>Navigator.of(this).pushNamed(routeName,arguments: arguments);
  void push(Widget page)=>Navigator.of(this).push(MaterialPageRoute(builder: (_)=>page));
  void pop()=>Navigator.of(this).pop(this);
  void pushReplacementNamed(routeName,{arguments})=>Navigator.of(this).pushReplacementNamed(routeName,arguments: arguments);


  void pushAndRemoveUntil(Widget page) => Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (BuildContext context) => page),
          (Route<dynamic> route) => false);

  TextTheme get textTheme => Theme.of(this).textTheme;
  
  double get height => MediaQuery.of(this).size.height; 
  double get width => MediaQuery.of(this).size.width; 
}


extension SizedBoxExtension on int{
  // sized box height
  Widget get sbh => SizedBox(height: h);

  // sized box width
  Widget get sbw => SizedBox(width: w);
}

extension languageExtension on LANGUAGE {
  Locale getLocal(){
    switch(this){
      case LANGUAGE.arabic:
        return const Locale('ar',"SA");
      case LANGUAGE.english:
        return const Locale('en',"US");
      case LANGUAGE.french:
        return const Locale('fr',"FR");
    }
  }

}


extension StringExtension on String? {
  String  get orEmpty{
    return this ?? '';
  }
}


extension BoolExtension on bool? {
  bool  get orEmpty{
    return this ?? false;
  }
}

extension IntExtension on int? {
  int get orEmpty{
    return this ?? -1;
  }
}

extension DoubleExtension on double? {
  double get orEmpty{
    return this ?? -0.0;
  }
}

extension DateTimeExtension on DateTime? {
  DateTime get orEmpty{
    return this ?? DateTime.now();
  }
}

extension ListExtension on List? {
  List get orEmpty{
    return this ?? [];
  }
}

extension MapExtension on Map? {
  Map get orEmpty{
    return this ?? {};
  }
}

extension RunesExtension on Runes? {
  Runes get orEmpty{
    return this ?? Runes('');
  }
}

extension SetExtension on Set? {
  Set get orEmpty{
    return this ?? <dynamic>{};
  }
}   

