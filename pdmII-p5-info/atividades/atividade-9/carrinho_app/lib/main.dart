import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/carrinho_provider.dart';
import 'screens/home_screen.dart';
import 'screens/carrinho_screen.dart';
import 'screens/detalhes_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CarrinhoProvider(),
      child: const MeuApp(),
    ),
  );
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/',

      routes: {
        '/': (_) => const HomeScreen(),
        '/detalhes': (_) => const DetalhesScreen(),
        '/carrinho': (_) => const CarrinhoScreen(),
      },
    );
  }
}