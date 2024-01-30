import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_book_controller.dart';

class AddBookView extends GetView<AddBookController> {
  const AddBookView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddBookView'),
        centerTitle: true,
      ),
      body: Center(
          child: Form(
            key: controller.formkey,
            child: Column(
              children: [
                TextFormField(
                    controller: controller.judulController,
                    decoration: InputDecoration(hintText: "Masukan Judul"),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "Username Tidak Boleh Sama";
                      }
                      return null;
                    }),
                TextFormField(
                    controller: controller.penulisController,
                    decoration: InputDecoration(hintText: "Masukan Penulis"),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "Password Tidak Boleh Kosong";
                      }
                      return null;
                    }),TextFormField(
                    controller: controller.penerbitController,
                    decoration: InputDecoration(hintText: "Masukan Penerbit"),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "Password Tidak Boleh Kosong";
                      }
                      return null;
                    }),TextFormField(
                    controller: controller.tahunController,
                    decoration: InputDecoration(hintText: "Masukan Tahun"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password Tidak Boleh Kosong";
                      }
                      return null;
                    }),
                Obx(() => controller.loading.value
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                    onPressed: () {
                      controller.addBook();
                    },
                    child: Text("Login")))
              ],
            ),
          )),
    );
  }
}
