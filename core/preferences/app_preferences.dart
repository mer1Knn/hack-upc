import 'dart:convert';

import 'package:iwd23/salah/domain/models/models.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import '../../../models/user.dart';
import '../../data/constants.dart';

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  DetailsModel? getUser() {
    try {
      return DetailsModel.fromJson(
          jsonDecode(_sharedPreferences.getString(Constants.detailsKey) ?? ''));
    } catch (error) {
      return null;
    }
  }

  void setDetails(DetailsModel? detailsModel) {
    _sharedPreferences.setString(Constants.detailsKey, jsonEncode(detailsModel?.toJson()));
  }

  String? getToken() {
    return _sharedPreferences.getString(Constants.tokenKey);
  }

  void setToken(String token) {
    _sharedPreferences.setString(Constants.tokenKey, token);
  }

  bool showOnBoarding() {
    bool? tmp = _sharedPreferences.getBool(Constants.showOnBoardingKey);
    return tmp ?? false;
  }

  void setOnBoarding() {
    _sharedPreferences.setBool(Constants.showOnBoardingKey,false);
  }




}

