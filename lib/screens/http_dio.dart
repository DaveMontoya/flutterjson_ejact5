import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:act2_flutterjson/model/data_web.dart';

class Httpdio extends StatefulWidget {
  const Httpdio ({super.key});

  @override
  State<Httpdio> createState() => _Httpdio();
}

class _Httpdio extends State<Httpdio> {
  DataWeb? dataweb;
  int valId=0;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async{
    valId++;
    //final response = await Dio().get('https://dummyjson.com/products/$valId');
    final response = await Dio().get('https://dummyjson.com/products');
    dataweb = DataWeb.fromJson(response.data);
    print(response.data);
    //print(dataweb?['name'] ?? 'No info');
    setState(() { });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info: $valId'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text( dataweb?.txtid ?? 'No info' ),
            Text( dataweb?.title ?? 'No info' ),
            Text( dataweb?.description ?? 'No info' ),
            //Text( dataweb?.price ?? 'No info' ),

            //if(dataweb != null)
              //Image.network(dataweb!.sprites.frontDefault),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next),
        onPressed: getData,
      ),
    );
  }
}