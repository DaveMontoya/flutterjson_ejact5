import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
//import 'package:act2_flutterjson/model/data_web.dart';


class Httpdio2 extends StatefulWidget {
  const Httpdio2 ({super.key});

  @override
  State<Httpdio2> createState() => _Httpdio2();
}

class _Httpdio2 extends State<Httpdio2> {
  //DataWeb? dataweb;
  //int valId=0;

  //https://protocoderspoint.com/jsondata/superheros.json

  //void getHTTP() async{
  //  var response = await Dio().get()
  //}

   //var jsonList;
  dynamic jsonList;

  @override
  void initState(){
    super.initState();
    getData();
  }

  Future<void> getData() async{
    try{
        var response = await Dio().get('https://protocoderspoint.com/jsondata/superheros.json');
        print(response);
        if(response.statusCode == 200){
          setState(() {
            jsonList =response.data["superheros"] as List;
          });
        }else {
          print(response.statusCode);
        }

    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('JSON desde Web'),
      ),

      body:ListView.builder(
          itemBuilder: (BuildContext context, int index){
            return Card(
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.network(jsonList[index]['url'], fit: BoxFit.fill,width: 50, height: 50,),
                ),
                title: Text(jsonList[index]['name']),
                subtitle: Text(jsonList[index]['power']),

              ),
            );

          },
        itemCount: jsonList == null?0:jsonList.length,

      ),

    );
  }
}