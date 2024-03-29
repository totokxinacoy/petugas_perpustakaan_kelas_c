import 'package:get/get.dart';

import 'package:petugas_perpustakaan_kelas_c/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';

import 'package:flutter/material.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () => Get.toNamed(Routes.BOOK), child: Text("Buku")),
            ElevatedButton(onPressed: () => Get.toNamed(Routes.PEMINJAMAN), child: Text("Peminjaman")),
          ],
        )
      ),
    );
  }
}
