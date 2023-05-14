import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iwd23/salah/core/extensions/extensions.dart';
import 'package:iwd23/salah/viewmodels/user_viewmodel.dart';
import 'package:iwd23/screens/Layout.dart';
import 'package:iwd23/screens/home_screen.dart';
import 'package:provider/provider.dart';

import '../core/base/base_viewmodel.dart';
import '../core/preferences/app_preferences.dart';
import '../data/requests/requests.dart';
import '../di.dart';
import '../domain/usecases/login_usecase.dart';

class LoginViewModel extends BaseViewModel {
  final LoginUseCase loginUseCase;

  LoginViewModel(this.loginUseCase);

  Future login(LoginRequest request, BuildContext context) async {
    showLoading(StateRendererType.full_screen,context);
    (await loginUseCase
        .execute(LoginUseCaseInput(request.email, request.password)))
        .fold(
          (left) {
        debugPrint(left.message);
        dismiss(context);
        showErrorSnackbar(context,left.message??"");
      },
          (right) async{
            dismiss(context);

        instance<AppPreferences>().setDetails(right.details);
        instance<AppPreferences>().setToken(right.token);

        Provider.of<UserViewModel>(context,listen: false).setDetails(right.details);

        await refreshDio();

        if(context.mounted){
          dismiss(context);
          context.pushReplacement(const LayoutScreen());
        }

      },
    );
  }
  @override
  close() {}

  @override
  init() {}
}
