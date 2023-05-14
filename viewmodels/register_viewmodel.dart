import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iwd23/salah/core/extensions/extensions.dart';
import 'package:iwd23/screens/login_screen.dart';

// import '../../screens/Layout.dart';
// import '../../screens/login_screen.dart';
import '../core/base/base_viewmodel.dart';
import '../data/requests/requests.dart';
import '../domain/usecases/register_usecase.dart';

class RegisterViewModel extends BaseViewModel {
  final RegisterUseCase loginUseCase;

  RegisterViewModel(this.loginUseCase);

  String _username = "";
  String _email = "";
  String _password = "";

  String get getUsername => _username;

  String get getEmail => _email;

  String get getPassword => _password;


  void setUsername(String value) {
    _username = value;
  }

  void setEmail(String value) {
    _email = value;
  }

  void setPassword(String value) {
    _password = value;
  }



  Future register(RegisterRequest request,BuildContext context) async {
    showLoading(StateRendererType.full_screen, context);

    final RegisterUseCaseInput registerUseCaseInput =
    RegisterUseCaseInput(request.email, request.fullName, request.password);
    (await loginUseCase.execute(registerUseCaseInput)).fold(
          (left) {
        debugPrint("left.message => ${left.message}");
        dismiss(context);

        showErrorSnackbar(context, left.message ?? "");
      },
          (right) {

        showSuccesSnackbar(context, "Account created successfully");
        dismiss(context);
        context.pushAndRemoveUntil(const LoginScreen());
      },
    );
  }

  @override
  close() {
    setUsername("");
    setEmail("");
    setPassword("");
  }

  @override
  init() {}
}
