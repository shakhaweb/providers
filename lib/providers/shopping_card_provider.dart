import 'package:flutter/foundation.dart';

class ShoppingCardProvider extends ChangeNotifier {
  List<String> itemTitle = [];



  addItemToBag( String title) {
    itemTitle.add(title);


    notifyListeners();

  }

 removeItemFromBag(String title) {
    itemTitle.remove(title);

    notifyListeners();
  }


}
