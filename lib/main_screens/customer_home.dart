import 'package:cris_shopping/main_screens/home.dart';
import 'package:flutter/material.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({super.key});

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  int _selectedItem = 0;
  final List<Widget> _tabs = const [
    HomeScreen(),
    Center(
      child: Text('Categoria'),
    ),
    Center(
      child: Text('Carrinho'),
    ),
    Center(
      child: Text('Perfil'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedItem,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Categoria'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Carrinho'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
        onTap: (index) {
          setState(() {
            _selectedItem = index;
          });
        },
      ),
    );
  }
}
