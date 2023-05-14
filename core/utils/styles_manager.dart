



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'fonts_manager.dart';


TextStyle _textStyle(Color color, double fontSize, FontWeight fontWeight) =>
    TextStyle(color: color, fontWeight: fontWeight, fontSize: fontSize.sp,fontFamily: FontFamilyManager.defaultFamily);





TextStyle lightStyle({ Color color = Colors.white,int fontSize = 12, fontWeight = FontWeightManager.light}) =>
    _textStyle(color, fontSize.toDouble(), fontWeight);

TextStyle regularStyle({Color color= Colors.white,int fontSize = 14, fontWeight = FontWeightManager.regular}) =>
    _textStyle(color, fontSize.toDouble(), fontWeight);

TextStyle mediumStyle({Color color= Colors.white,int fontSize = 16, fontWeight = FontWeightManager.medium}) =>
    _textStyle(color, fontSize.toDouble(), fontWeight);

TextStyle semiBoldStyle({Color color= Colors.white,int fontSize = 18, fontWeight = FontWeightManager.semiBold}) =>
    _textStyle(color, fontSize.toDouble(), fontWeight);

TextStyle boldStyle({ Color color= Colors.white,int fontSize = 20, fontWeight = FontWeightManager.bold}) =>
    _textStyle(color, fontSize.toDouble(), fontWeight);

