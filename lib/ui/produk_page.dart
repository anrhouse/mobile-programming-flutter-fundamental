import 'package:belajarflutter/ui/produk_detail.dart';
import 'package:belajarflutter/ui/produk_form.dart';
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
          actions: [
            GestureDetector(
              //Menampilkan Icon
              child: const Icon(
                Icons.add,
              ),

              //Pada saat icon + di tap
              onTap: () async {
                //Pindah ke halaman produk form
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProdukForm()));
              },
            )
          ],
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
            ),

            //Note : pada bagian list dapat diklik, sedangkan card diatas tidak bisa
            //list
            ItemProduk(
              kodeProduk: "A001",
              namaProduk: "Kulkas",
              hargaProduk: 3000000,
            ),
            ItemProduk(
              kodeProduk: "A002",
              namaProduk: "TV",
              hargaProduk: 2000000,
            ),
            ItemProduk(
              kodeProduk: "A003",
              namaProduk: "Mesin Cuci",
              hargaProduk: 2000000,
            )
          ],
        ));
  }
}

class ItemProduk extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? hargaProduk;

  const ItemProduk(
      {Key? key, this.kodeProduk, this.namaProduk, this.hargaProduk})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaProduk.toString()),
          subtitle: Text(hargaProduk.toString()),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProdukDetail(
                      kodeProduk: kodeProduk,
                      namaProduk: namaProduk,
                      harga: hargaProduk,
                    )));
      },
    );
  }
}
