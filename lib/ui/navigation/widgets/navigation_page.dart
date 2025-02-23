import 'package:erp/ui/customers/widgets/customers_page.dart';
import 'package:erp/ui/home/widgets/home_page.dart';
import 'package:erp/ui/orders/widgets/orders_page.dart';
import 'package:erp/ui/products/widgets/products_page.dart';
import 'package:erp/utils/colors.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int active = 0;

  List<Widget> screens = [
    HomePage(),
    OrdersPage(),
    ProductsPage(),
    CustomersPage(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.scaffold,
      body: screens[active],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: CustomColors.border),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: CustomColors.navbar,
          type: BottomNavigationBarType.fixed,
          currentIndex: active,
          onTap: (value) => setState(() {
            active = value;
          }),
          selectedItemColor: Colors.blueAccent,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.move_to_inbox),
              label: 'Pedidos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: 'Produtos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Clientes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Mais',
            ),
          ],
        ),
      ),
    );
  }
}
