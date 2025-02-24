import 'package:erp/ui/customers/widgets/customer_card.dart';
import 'package:erp/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomersPage extends StatefulWidget {
  const CustomersPage({super.key});

  @override
  State<CustomersPage> createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  final MenuController tag = MenuController();
  final MenuController order = MenuController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .4,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              foregroundColor: CustomColors.navbar,
              surfaceTintColor: CustomColors.navbar,
              title: Text(
                'Clientes',
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
                'Todos os clientes',
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
                  onPressed: () {},
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
                        controller: tag,
                        menuChildren: [
                          ListTile(
                            title: Text('Teste'),
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
                            'Tag',
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                          icon: Icon(Icons.keyboard_arrow_down),
                          iconAlignment: IconAlignment.end,
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
                      MenuAnchor(
                        controller: order,
                        menuChildren: [
                          ListTile(
                            title: Text('Última atualização'),
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
                            'Última atualização',
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
              itemBuilder: (context, index) => CustomerCard(),
              itemCount: 16,
            ),
          ),
        ),
      ],
    );
  }
}
