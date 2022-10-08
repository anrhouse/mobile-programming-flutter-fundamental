import 'package:belajarflutter/ui/produk_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({Key? key}) : super(key: key);

  @override
  State<ProdukForm> createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Produk Form"),
      ),
      body: Column(children: [
        _textBoxKodeProduk(),
        _textBoxNamaProduk(),
        _textBoxHarga(),
        _tombolSimpan(),
      ]),
    );
  }

  _textBoxKodeProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Kode Product"),
      controller: _kodeProdukTextboxController,
    );
  }

  _textBoxNamaProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Produk"),
      controller: _namaProdukTextboxController,
    );
  }

  _textBoxHarga() {
    return TextField(
      decoration: const InputDecoration(labelText: "Harga"),
      controller: _hargaProdukTextboxController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          //Ambil datanya
          String kodeProduk = _kodeProdukTextboxController.text;
          String namaProduk = _namaProdukTextboxController.text;
          int hargaProduk = int.parse(_hargaProdukTextboxController.text);

          //Pindah ke halaman produk detail & kirim datanya
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProdukDetail(
                    kodeProduk: kodeProduk,
                    namaProduk: namaProduk,
                    harga: hargaProduk,
                  )));
        },
        child: const Text("Simpan"));
  }
}
