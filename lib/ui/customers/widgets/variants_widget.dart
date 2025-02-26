import 'package:erp/ui/_widgets/form_components/custom_text_field.dart';
import 'package:erp/utils/colors.dart';
import 'package:flutter/material.dart';

class VariantsWidget extends StatefulWidget {
  const VariantsWidget({super.key});

  @override
  State<VariantsWidget> createState() => _VariantsWidgetState();
}

class _VariantsWidgetState extends State<VariantsWidget> {
  List<Map<String, dynamic>> variants = [];

  void addVariantForm() {
    setState(() {
      variants.add(
          {"name": TextEditingController(), "value": TextEditingController()});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        if (variants.isNotEmpty)
          SizedBox(
            height: (178 * variants.length + 4 * variants.length).toDouble(),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: CustomColors.border),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    spacing: 8,
                    children: [
                      CustomTextField(
                        controller: variants[index]['name'],
                        label: 'Nome da opção',
                      ),
                      CustomTextField(
                        controller: variants[index]['value'],
                        label: 'Valor da opção',
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 8,
              ),
              itemCount: variants.length,
            ),
          ),
        TextButton.icon(
          onPressed: addVariantForm,
          icon: Icon(
            Icons.add_circle_outline,
            color: Colors.white,
          ),
          label: Text(
            'Adicionar opções como tamanho ou cor',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
