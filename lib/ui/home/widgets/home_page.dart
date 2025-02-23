import 'package:erp/ui/_widgets/button.dart';
import 'package:erp/utils/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Scaffold(
            backgroundColor: CustomColors.scaffold,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                'Minha Loja',
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
                  icon: Icon(Icons.qr_code),
                ),
                const SizedBox(
                  width: 8,
                ),
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
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                spacing: 8,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      Expanded(
                        child: Card.outlined(
                          margin: EdgeInsets.zero,
                          color: Colors.blueAccent.withAlpha(30),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            constraints: BoxConstraints(minWidth: 200),
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 16,
                              children: [
                                Icon(
                                  Icons.library_add,
                                  color: Colors.blueAccent,
                                ),
                                Text('Adicionar venda personalizada'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card.outlined(
                          margin: EdgeInsets.zero,
                          color: Colors.blueAccent.withAlpha(30),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            constraints: BoxConstraints(minWidth: 200),
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 16,
                              children: [
                                Icon(
                                  Icons.library_add,
                                  color: Colors.blueAccent,
                                ),
                                Text('Adicionar venda personalizada'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 8,
                    children: [
                      Expanded(
                        child: Card.outlined(
                          margin: EdgeInsets.zero,
                          color: Colors.blueAccent.withAlpha(30),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            constraints: BoxConstraints(minWidth: 200),
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 16,
                              children: [
                                Icon(
                                  Icons.library_add,
                                  color: Colors.blueAccent,
                                ),
                                Text('Adicionar venda personalizada'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card.outlined(
                          margin: EdgeInsets.zero,
                          color: Colors.blueAccent.withAlpha(30),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            constraints: BoxConstraints(minWidth: 200),
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 16,
                              children: [
                                Icon(
                                  Icons.library_add,
                                  color: Colors.blueAccent,
                                ),
                                Text('Adicionar venda personalizada'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
            backgroundColor: CustomColors.scaffold,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                'Carrinho',
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
                  icon: Icon(Icons.more_horiz),
                ),
                const SizedBox(
                  width: 8,
                ),
                IconButton.filledTonal(
                  color: Colors.red,
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Colors.red.withAlpha(30),
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                ),
                const SizedBox(
                  width: 16,
                ),
              ],
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Button(
                    label: 'Adicionar cliente',
                    onPressed: () {},
                    variant: ButtonVariant.outlined,
                  ),
                ),
                Expanded(child: SingleChildScrollView()),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      border:
                          Border(top: BorderSide(color: CustomColors.border))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              Text('0 itens'),
                            ],
                          ),
                          Text(
                            'R\$ 0,00',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
