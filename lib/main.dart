import 'package:flutter/material.dart';
import 'package:myapp/mis_paginas_tab/ita_bottom_nav.dart';
import 'ita_app_bar.dart';
import 'mis_paginas_tab/inicio.dart';
import 'mis_paginas_tab/comidas.dart';
import 'mis_paginas_tab/bebidas.dart';
import 'mis_paginas_tab/favoritos.dart';
import 'mis_paginas_tab/amigos.dart';

void main() => runApp(const MaterialApp(home: MainScreen(), debugShowCheckedModeBanner: false));

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;
  final List<Widget> _tabs = [
    const InicioTab(), const ComidasTab(), const BebidasTab(), const FavoritosTab(), const AmigosTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ItaAppBar(),
      body: IndexedStack(index: _index, children: _tabs),
      bottomNavigationBar: ItaBottomNav(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
      ),
    );
  }
}