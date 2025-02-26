import 'package:erp/utils/colors.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FileUpload extends StatelessWidget {
  const FileUpload({super.key});

  void _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      // Aqui você pode manipular o arquivo selecionado
      print("Arquivo selecionado: ${result.files.single.name}");
    } else {
      print("Nenhum arquivo selecionado");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 6,
      children: [
        Text(
          'Mídia',
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: _pickFile,
          child: Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: CustomColors.navbar,
              border: Border.all(
                  color: CustomColors.border, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Colors.blueAccent.withAlpha(30),
                    ),
                  ),
                  onPressed: _pickFile,
                  child: Text(
                    "Fazer upload de arquivo",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Selecionar existente",
                  style: TextStyle(
                      color: Colors.blueAccent, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 8),
                Text(
                  "Aceita imagens, vídeos ou modelos 3D",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
