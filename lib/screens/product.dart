import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:act2_flutterjson/providers/provider_product.dart';
import 'dart:convert';


class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('Productos JSON: Teléfonos'),
      ),

      body: FutureBuilder(
          future: readJsonData(),
          builder: (context, data) {
            if (data.hasError) {
              return Center(
                  child: Text("${data.error}"));
            } else if (data.hasData) {
              var items = data.data as List<ProductDataModel>;
              return ListView.builder(
                  itemCount: items == null ? 0 : items.length,
                  itemBuilder: (context, index) {
                    return Card(
                        elevation: 5,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 80,
                                  height: 50,
                                  child: Image(
                                    image: NetworkImage(
                                        items[index].imageUrl.toString()
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                        padding: const EdgeInsets.only(
                                            bottom: 8),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [

                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20, right: 8),
                                                child: Text(
                                                  'Modelo: ' + items[index].name.toString(),
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight
                                                          .bold
                                                  ),
                                                )
                                            ),

                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20, right: 8),
                                                child: Text(
                                                    'Precio: ' + items[index].oldPrice.toString(),
                                                  ),
                                                ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, right: 8),
                                              child: Text(
                                                'Descuento: ' + items[index].discountPercentage.toString(),
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, right: 8),
                                              child: Text(
                                                'Categorìa: ' + items[index].category.toString(),
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, right: 8),

                                              child: Text(
                                                'Rating: ' + items[index].rating.toString(),
                                              ),
                                            ),

                                          ], // children
                                        ),
                                    )
                                )
                              ],
                            ),
                        ),
                    );
                  } //item builder
              );
            }  else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }//else IF
          } //builder
      ),
    );
  } //WIDGET

  Future<List<ProductDataModel>> readJsonData() async {
    final jsondata = await rootBundle.rootBundle.loadString('data/productos.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => ProductDataModel.fromJson(e)).toList();
  }

} //class
