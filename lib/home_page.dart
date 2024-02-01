//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shop_app/cart_page.dart';
import 'package:shop_app/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentpage = 0;
  List<Widget> pages = [const ProductListPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentpage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        selectedItemColor: Colors.lightGreen,
        onTap: (value) {
          setState(() {
            currentpage = value;
          });
        },
        currentIndex: currentpage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: '')
        ],
      ),
    );
  }
}
