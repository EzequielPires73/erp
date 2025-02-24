import 'package:erp/ui/products/widgets/create_product_page.dart';
import 'package:erp/ui/products/widgets/product_card.dart';
import 'package:erp/utils/colors.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final MenuController tag = MenuController();
  final MenuController order = MenuController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .4,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              foregroundColor: CustomColors.navbar,
              surfaceTintColor: CustomColors.navbar,
              title: Text(
                'Produtos',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              actions: [
                IconButton.filledTonal(
                  color: Colors.blueAccent,
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Colors.blueAccent.withAlpha(30),
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
                const SizedBox(
                  width: 16,
                ),
              ],
            ),
          ),
        ),
        VerticalDivider(
          width: 1,
          thickness: 1,
          color: CustomColors.border,
        ),
        Expanded(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              foregroundColor: CustomColors.navbar,
              surfaceTintColor: CustomColors.navbar,
              title: Text(
                'Todos os produtos',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              actions: [
                IconButton.filledTonal(
                  color: Colors.blueAccent,
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Colors.blueAccent.withAlpha(30),
                    ),
                  ),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateProductPage(),
                      )),
                  icon: Icon(Icons.add),
                ),
                const SizedBox(
                  width: 16,
                ),
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(56),
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: 16,
                  ),
                  child: Row(
                    spacing: 8,
                    children: [
                      Expanded(child: Text('Exibindo 16 resultados')),
                      MenuAnchor(
                        controller: order,
                        menuChildren: [
                          ListTile(
                            title: Text('Data de criação (mais nova primeiro)'),
                          )
                        ],
                        builder: (context, controller, child) =>
                            FilledButton.icon(
                          onPressed: () {
                            if (controller.isOpen) {
                              controller.close();
                            } else {
                              controller.open();
                            }
                          },
                          label: Text(
                            'Data de criação (mais nova primeiro)',
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                          icon: Icon(Icons.import_export),
                          style: ButtonStyle(
                            iconColor:
                                WidgetStatePropertyAll(Colors.blueAccent),
                            backgroundColor: WidgetStatePropertyAll(
                                Colors.blueAccent.withAlpha(30)),
                            padding: WidgetStatePropertyAll(
                              EdgeInsets.only(
                                left: 12,
                                right: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) => ProductCard(),
              itemCount: 16,
            ),
          ),
        )
      ],
    );
  }
}
