import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;


  void increment() {
    counter++;
    notifyListeners();

  }

  void decrement() {
    counter--;
    notifyListeners();
  }


}
