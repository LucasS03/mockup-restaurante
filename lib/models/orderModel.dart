import 'package:scoped_model/scoped_model.dart';

class OrderModel extends Model {

  String _teste = "Lucas";

  String get teste => _teste;

  void alteraNome(String nome) {
    _teste = nome;
    notifyListeners();
  }

}