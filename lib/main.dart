
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'dart:convert';

const request = "https://api.hgbrasil.com/finance?key=bf760f0e";

void main() async{

    http.Response response = await http.get(request);

    print(json.decode(response.body)['results']['currencies']['USD']);

    runApp(new MaterialApp(

      title: "Conversor De Moedas",
       home: Home()

    ));
    

}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(

          title: Text("Conversor de Moedas"),
          backgroundColor: Colors.blue,
          centerTitle: true,

        ),

    );
  }
}

