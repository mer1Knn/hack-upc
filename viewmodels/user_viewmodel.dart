import 'package:flutter/material.dart';
import 'package:iwd23/salah/core/extensions/extensions.dart';
import 'package:iwd23/salah/domain/models/models.dart';
import 'package:iwd23/screens/login_screen.dart';
// import '../../models/user.dart';
// import '../../screens/login_screen.dart';
import '../core/base/base_viewmodel.dart';
import '../core/preferences/app_preferences.dart';
import '../core/preferences/preferences_keys.dart';
import '../data/constants.dart';

class UserViewModel extends BaseViewModel {
  final AppPreferences _appPreferences;

  UserViewModel(this._appPreferences) {
    init();
  }

  DetailsModel? _details;

  DetailsModel? get getDetails => _details;

  void setDetails(DetailsModel? details) {
    _details = details;
    notifyListeners();
  }


  String getUserName() {
    return _details?.fullName ?? "";
  }

   bool get authenticated  {
    final String? token =  _appPreferences.getToken();
    if (token == null || token.isEmpty) return false;
    return true;
  }


  bool get showOnBoarding {
    bool show = _appPreferences.showOnBoarding();
    if(show){
      _appPreferences.setOnBoarding();
    }
    return show;
  }

  void signOut(BuildContext context) {
    _appPreferences.setDetails(null);
    _appPreferences.setToken("");
    context.pushAndRemoveUntil(const LoginScreen());
  }

  @override
  close() {}

  @override
  init() {
    _details = _appPreferences.getUser();
    notifyListeners();
  }
}
