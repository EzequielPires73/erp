import 'package:erp/ui/_widgets/form_components/custom_text_field.dart';
import 'package:erp/ui/_widgets/form_components/dropdown_select.dart';
import 'package:erp/ui/_widgets/form_components/file_upload.dart';
import 'package:erp/ui/_widgets/form_components/form_content.dart';
import 'package:erp/ui/_widgets/form_components/money_text_field.dart';
import 'package:erp/ui/customers/widgets/variants_widget.dart';
import 'package:erp/utils/colors.dart';
import 'package:flutter/material.dart';

class CreateProductPage extends StatefulWidget {
  const CreateProductPage({super.key});

  @override
  State<CreateProductPage> createState() => _CreateProductPageState();
}

class _CreateProductPageState extends State<CreateProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.scaffold,
      appBar: AppBar(
        backgroundColor: CustomColors.scaffold,
        surfaceTintColor: CustomColors.scaffold,
        shape: Border(bottom: BorderSide(color: CustomColors.border)),
        title: Text(
          'Adicionar produto',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Salvar',
              style: TextStyle(
                color: Colors.blueAccent,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            Container(
              constraints: BoxConstraints(minWidth: 500, maxWidth: 600),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: [
                    FormContent(
                      child: Column(
                        spacing: 16,
                        children: [
                          CustomTextField(
                            controller: TextEditingController(),
                            label: 'Título',
                          ),
                          CustomTextField(
                            controller: TextEditingController(),
                            label: 'Descrição',
                            maxLines: 4,
                          ),
                          FileUpload(),
                          DropdownSelect(
                            label: 'Categoria',
                            items: [],
                            getLabel: (v) => 'Teste',
                            onChange: (v) => 'Teste',
                          ),
                          DropdownSelect(
                            label: 'Status',
                            items: [],
                            getLabel: (v) => 'Teste',
                            onChange: (v) => 'Teste',
                          ),
                        ],
                      ),
                    ),
                    FormContent(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 16,
                        children: [
                          Text(
                            'Preço',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            spacing: 8,
                            children: [
                              Expanded(
                                child: MoneyTextField(
                                  controller: TextEditingController(),
                                  label: 'Preço',
                                ),
                              ),
                              Expanded(
                                child: MoneyTextField(
                                  controller: TextEditingController(),
                                  label: 'Comparação de preços',
                                ),
                              ),
                            ],
                          ),
                          Row(
                            spacing: 8,
                            children: [
                              Expanded(
                                child: MoneyTextField(
                                  controller: TextEditingController(),
                                  label: 'Custo por item',
                                ),
                              ),
                              Expanded(
                                child: MoneyTextField(
                                  controller: TextEditingController(),
                                  label: 'Lucro',
                                ),
                              ),
                              Expanded(
                                child: MoneyTextField(
                                  controller: TextEditingController(),
                                  label: 'Margem',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    FormContent(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 16,
                        children: [
                          Text(
                            'Estoque',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Colors.blueAccent,
                                value: true,
                                onChanged: (v) {},
                              ),
                              Text('Acompanhar quantidade'),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Colors.blueAccent,
                                value: true,
                                onChanged: (v) {},
                              ),
                              Text('Continuar vendendo mesmo sem estoque'),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Colors.blueAccent,
                                value: true,
                                onChanged: (v) {},
                              ),
                              Text(
                                  'Este produto tem um SKU ou código de barras'),
                            ],
                          ),
                          Row(
                            spacing: 8,
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  controller: TextEditingController(),
                                  label: 'SKU',
                                ),
                              ),
                              Expanded(
                                child: CustomTextField(
                                  controller: TextEditingController(),
                                  label: 'Código de barras',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    FormContent(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 16,
                        children: [
                          Text(
                            'Variantes',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          VariantsWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              constraints: BoxConstraints(maxWidth: 348),
              child: Form(
                child: Column(
                  spacing: 16,
                  children: [
                    FormContent(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 16,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            spacing: 8,
                            children: [
                              Text(
                                'Publicando',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_horiz),
                              ),
                            ],
                          ),
                          DropdownSelect(
                            label: 'Status',
                            items: [],
                            getLabel: (v) => 'Teste',
                            onChange: (v) => 'Teste',
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Canais de vendas',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: false,
                                    onChanged: (v) {},
                                  ),
                                  Text('Loja virtual'),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: false,
                                    onChanged: (v) {},
                                  ),
                                  Text('Ponto de venda'),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    FormContent(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 16,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            spacing: 8,
                            children: [
                              Text(
                                'Organização do produto',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.info),
                              ),
                            ],
                          ),
                          CustomTextField(
                            controller: TextEditingController(),
                            label: 'Tipo',
                          ),
                          CustomTextField(
                            controller: TextEditingController(),
                            label: 'Fornecedor',
                          ),
                          CustomTextField(
                            controller: TextEditingController(),
                            label: 'Coleções',
                          ),
                          CustomTextField(
                            controller: TextEditingController(),
                            label: 'Tags',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
