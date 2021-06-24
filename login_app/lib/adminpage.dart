import 'dart:convert';

import 'package:flutter/material.dart';
import 'detail.dart';
import 'package:http/http.dart' as http;

class AdminPage extends StatelessWidget {
  AdminPage({this.username});
  final String username;

  final String url = "http://10.0.2.2/login_flutter/getdata.php";

  Future getProducts() async {
    var response = await http.get(Uri.parse(url));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue[600],
            title: Center(
              child: Text(
                "Buku ku",
              ),
            )),
        body: FutureBuilder(
            future: getProducts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 150,
                        width: 100,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: Colors.green,
                          elevation: 10,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ListTile(
                                leading: Icon(Icons.book,
                                    size: 70, color: Colors.white),
                                title: Text(snapshot.data[index]['nama_buku'],
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17)),
                                subtitle: Text(snapshot.data[index]['penerbit'],
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12)),
                              ),
                              ButtonTheme(
                                child: ButtonBar(
                                  children: <Widget>[
                                    GestureDetector(
                                      child: FlatButton(
                                        child: Text('Baca',
                                            style:
                                                TextStyle(color: Colors.white)),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => Detail(
                                                        product: snapshot
                                                            .data[index],
                                                      )));
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // child: Card(
                        //   child: new ListTile(
                        //     title: new Text(
                        //       snapshot.data[index]['nama_buku'],
                        //       style: TextStyle(
                        //         fontSize: 25,
                        //       ),

                        //     ),
                        //     leading: new Icon(Icons.book_online),
                        //   ),
                        // ),
                      );
                    });
              } else {
                return Text('error');
              }
            }));
  }
}
