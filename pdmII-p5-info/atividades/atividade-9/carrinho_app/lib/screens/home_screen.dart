import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Loja"),
      ),

      body: Center(
        child: ElevatedButton(

          onPressed: (){
            Navigator.pushNamed(context, "/detalhes");
          },

          child: const Text("Ver Produto"),
        ),
      ),

      floatingActionButton: FloatingActionButton(

        onPressed: (){
          Navigator.pushNamed(context, "/carrinho");
        },

        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}