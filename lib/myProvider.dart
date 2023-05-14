
import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier{
  
  int index=0;
  void changeIndex(int i){
    index=i;
    print(i);
    notifyListeners();
  }

}