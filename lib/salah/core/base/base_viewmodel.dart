import 'dart:ui';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

abstract class BaseViewModel extends ChangeNotifier {
  init();
  close();
  bool _show = false;

  showLoading(StateRendererType type,BuildContext context){
    _show = true;
    type.render(context);
  }

  showErrorSnackbar(BuildContext context,String msg){
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'Error',
        message: msg ,
        contentType: ContentType.failure,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  showSuccesSnackbar(BuildContext context,String msg){
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'Congratulations',
        message: msg ,
        contentType: ContentType.success,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }


  void dismiss(context) {
    if (_show) {
      _show = false;
      Navigator.pop(context);
    }
  }

}


enum StateRendererType {full_screen}


extension StateRendererTypeExt on StateRendererType {
  void render(BuildContext context) {
    switch (this) {
      case StateRendererType.full_screen:
        showDialog(
          context: context,
          builder: (_) => WillPopScope(
            onWillPop: () async {
              return false;
            },
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                child: const Center(
                  child: CircularProgressIndicator()
                ),
              ),
            ),
          ),
        );
        break;
    }
  }
}
