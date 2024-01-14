import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../model/data_user.dart';

class Apihttp extends StatefulWidget {
  const Apihttp({super.key});

  @override
  State<Apihttp> createState() => _Apihttp();
}

class _Apihttp extends State<Apihttp> {

  DataUser? dataweb;
  int valId=0;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async{
    valId++;
    final response = await Dio().get('https://jsonplaceholder.typicode.com/users/$valId');


    dataweb = DataUser.fromJson(response.data);
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
            Text( dataweb?.name ?? 'No info' ),
            Text( dataweb?.email ?? 'No info' ),
            Text( dataweb?.phone ?? 'No info' ),
            Text( dataweb?.website ?? 'No info' ),
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