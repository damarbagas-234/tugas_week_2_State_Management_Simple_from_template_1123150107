import 'package:flutter/foundation.dart';

class CounterModel extends ChangeNotifier {
  int _angka = 0;

  // Getter untuk mengambil nilai counter
  int get angka => _angka;

  // Menambah nilai counter
  void increment() {
    _angka++;
    notifyListeners();
  }

  // Mengurangi nilai counter (tidak boleh kurang dari 0)
  void decrement() {
    if (_angka > 0) {
      _angka--;
      notifyListeners();
    }
  }

  // Reset nilai counter ke 0
  void reset() {
    _angka = 0;
    notifyListeners();
  }
}
