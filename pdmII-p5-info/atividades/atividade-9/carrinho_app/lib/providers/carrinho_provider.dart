import 'package:flutter/material.dart';
import '../models/produto.dart';

class CarrinhoProvider extends ChangeNotifier {

  final List<Produto> _itens = [];

  List<Produto> get itens => _itens;

  void adicionar(Produto produto){
    _itens.add(produto);
    notifyListeners();
  }

  double get total{
    double soma = 0;

    for(var p in _itens){
      soma += p.preco;
    }

    return soma;
  }
}