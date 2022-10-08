import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Data Produk"),
        ),
        body: ListView(
          children: const [
            Card(
              child: ListTile(
                title: Text("Kulkas"),
                subtitle: Text("2500000"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("TV"),
                subtitle: Text("5000000"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Mesin Cuci"),
                subtitle: Text("1500000"),
              ),
            )
          ],
        ));
  }
}
