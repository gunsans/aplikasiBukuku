import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Map product;

  Detail({@required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detail Buku"),
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              child: Image.asset('assets/book.png'),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    product['nama_buku'],
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    product['penerbit'],
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(product['deskripsi'])
                ],
              ),
            )
          ],
        ));
  }
}
