import 'package:act2_flutterjson/Screens/product.dart';
//import 'package:act2_flutterjson/screens/api_http.dart';
import 'package:act2_flutterjson/screens/http_dio2.dart';
import 'package:act2_flutterjson/view/restapi_con_http.dart';
import 'package:flutter/material.dart';
//import 'http_dio.dart';

class Screen01 extends StatelessWidget {
  const Screen01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ACTIVIDAD 2 DAVID MONTOYA")
      ),
      body:  Center(
          //Text("Aplicación con API y JSON", style: TextStyle(color: Colors.blue, fontSize:14)),
          child: Column(
            children: [
              const Text("Aplicación con API y JSON", style: TextStyle(
                  color: Colors.blue, fontSize:23)),
              const Text("por David Montoya", style: TextStyle(
                  color: Colors.blue, fontSize:25)),

              const Text("Consumo y publicación de productos desde la nube ",
                  style: TextStyle(color: Colors.blue, fontSize:20)),
              const Text("EJEMPLOS",
                 style: TextStyle(color: Colors.blue,
                fontSize:18)),
              const Text("USO DE JSON",
                  style: TextStyle(color: Color.fromARGB(255, 109, 170, 224),
                      fontSize:18)),
              const Text("USO DE API",
                  style: TextStyle(color: Color.fromARGB(255, 109, 170, 224),
                      fontSize:18)),
              const Text("(OJO: Desactivar CORS en su explorador)",
                  style: TextStyle(color: Color.fromARGB(255, 224, 130, 109),
                      fontSize:18)),


              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              ),
              ElevatedButton(
                  onPressed:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Httpdio2()));
                  },
                  child: const Text("JSON desde WEB con paquete DIO")
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 00, vertical: 20),),
              ElevatedButton(
                  onPressed:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RestApiConHttp()));
                  },
                  child: const Text("JSON Rest API con paquete HTTP")
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 00, vertical: 20),),
              ElevatedButton(
                  onPressed:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Product()));
                  },
                  child: const Text("Productos desde archivo JSON local con imagen URL")
              ),
            ],


         ),

      )
    );
  }
}
