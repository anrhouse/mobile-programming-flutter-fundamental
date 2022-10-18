import 'package:flutter/material.dart';
import 'ui/produk_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Aplikasi Flutter Pertama", home: ProdukPage()
        // home: Scaffold(
        //   appBar: AppBar(
        //     title: const Text("Belajar Flutter"),
        //   ),
        //   body: const Center(
        //     child: Text("Hello World"),
        //   ),
        // ),
        );
  }
}
