import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/produto.dart';
import '../providers/carrinho_provider.dart';

class DetalhesScreen extends StatelessWidget {
  const DetalhesScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final produto = Produto(
      nome: "Notebook",
      preco: 3500,
    );

    return Scaffold(

      appBar: AppBar(
        title: const Text("Produto"),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text(produto.nome),

            Text("R\$ ${produto.preco}"),

            ElevatedButton(

              onPressed: (){

                context.read<CarrinhoProvider>().adicionar(produto);

                ScaffoldMessenger.of(context).showSnackBar(

                  const SnackBar(
                    content: Text("Produto adicionado"),
                  ),

                );
              },

              child: const Text("Adicionar ao Carrinho"),
            )
          ],
        ),
      ),
    );
  }
}