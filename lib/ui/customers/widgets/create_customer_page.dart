import 'package:erp/ui/_widgets/form_components/custom_text_field.dart';
import 'package:erp/ui/_widgets/form_components/form_content.dart';
import 'package:erp/ui/_widgets/typograph/form_title.dart';
import 'package:erp/utils/colors.dart';
import 'package:flutter/material.dart';

class CreateCustomerPage extends StatefulWidget {
  const CreateCustomerPage({super.key});

  @override
  State<CreateCustomerPage> createState() => _CreateCustomerPageState();
}

class _CreateCustomerPageState extends State<CreateCustomerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.scaffold,
      appBar: AppBar(
        backgroundColor: CustomColors.scaffold,
        surfaceTintColor: CustomColors.scaffold,
        shape: Border(bottom: BorderSide(color: CustomColors.border)),
        title: Text(
          'Adicionar cliente',
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 16,
                        children: [
                          FormTitle(value: 'Visão geral do cliente'),
                          Row(
                            spacing: 8,
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  controller: TextEditingController(),
                                  label: 'Nome',
                                ),
                              ),
                              Expanded(
                                child: CustomTextField(
                                  controller: TextEditingController(),
                                  label: 'Sobrenome',
                                ),
                              ),
                            ],
                          ),
                          CustomTextField(
                            controller: TextEditingController(),
                            label: 'Email',
                          ),
                          Row(
                            spacing: 8,
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  controller: TextEditingController(),
                                  label: 'Telefone',
                                ),
                              ),
                              Expanded(
                                child: CustomTextField(
                                  controller: TextEditingController(),
                                  label: 'CPF',
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FormTitle(value: 'Endereço-padrão'),
                              Text(
                                'O endereço principal deste cliente',
                                style: TextStyle(color: Colors.white54),
                              ),
                            ],
                          ),
                          CustomTextField(
                            controller: TextEditingController(),
                            label: 'País/região',
                          ),
                          Row(
                            spacing: 8,
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  controller: TextEditingController(),
                                  label: 'Nome',
                                ),
                              ),
                              Expanded(
                                child: CustomTextField(
                                  controller: TextEditingController(),
                                  label: 'Sobrenome',
                                ),
                              ),
                            ],
                          ),
                          Row(
                            spacing: 8,
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  controller: TextEditingController(),
                                  label: 'Empresa',
                                ),
                              ),
                              Expanded(
                                child: CustomTextField(
                                  controller: TextEditingController(),
                                  label: 'Telefone',
                                ),
                              ),
                            ],
                          ),
                          CustomTextField(
                            controller: TextEditingController(),
                            label: 'CEP',
                          ),
                          CustomTextField(
                            controller: TextEditingController(),
                            label: 'Endereço e número',
                          ),
                          CustomTextField(
                            controller: TextEditingController(),
                            label: 'Apartamento, bloco etc.',
                          ),
                          Row(
                            spacing: 8,
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  controller: TextEditingController(),
                                  label: 'Cidade',
                                ),
                              ),
                              Expanded(
                                child: CustomTextField(
                                  controller: TextEditingController(),
                                  label: 'Estado',
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
            Container(
              width: 348,
              constraints: BoxConstraints(maxWidth: 348),
              child: Form(
                child: Column(
                  spacing: 16,
                  children: [
                    FormContent(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 8,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FormTitle(
                                value: 'Observações',
                              ),
                              Text(
                                'As observações são privadas e não são compartilhadas com o cliente.',
                                style: TextStyle(color: Colors.white54),
                              ),
                            ],
                          ),
                          CustomTextField(
                            controller: TextEditingController(),
                          )
                        ],
                      ),
                    ),
                    FormContent(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 8,
                        children: [
                          FormTitle(
                            value: 'Tags',
                          ),
                          CustomTextField(
                            controller: TextEditingController(),
                          )
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
