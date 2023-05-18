import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  DateTime? selectedDate;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  XFile? photo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: Column(children: [
        Form(
            key: formKey,
            child: Column(
              children: [
                Text(selectedDate.toString()),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Ngga Boleh kosong!!!";
                    }
                  },
                ),
                ElevatedButton(
                    onPressed: () async {
                      selectedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(0),
                          lastDate: DateTime(3000));
                      setState(() {});
                    },
                    child: Text("Date Picker")),
                ElevatedButton(
                  onPressed: () async {
                    formKey.currentState!.validate();
                  },
                  child: Text("Validate"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final ImagePicker picker = ImagePicker();

                    photo = await picker.pickImage(source: ImageSource.camera);

                    setState(() {});
                  },
                  child: Text("Kamera"),
                ),
                photo == null ? SizedBox() : Image.file(File(photo!.path))
              ],
            ))
      ]),
    );
  }
}
