import 'package:flutter/material.dart';
import 'screen_01.dart';
import 'screen_02.dart';
import 'screen_03.dart';
import 'product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
  }

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0; ///contador para ventanas de inicio

  @override
  Widget build(BuildContext context){

    final pages=[
      const Screen01(),
      const Screen02(),
      const Screen03(),
      const Product(),
    ];

    return  Scaffold(
      ///appBar: AppBar(
        ///title: const Text("Contenedor Principal de Scaffold")
      ///),
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
            currentIndex: selectedIndex,
          onTap: (value){
            setState(() {
              selectedIndex = value;
            });
          },

          elevation: 0,
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              activeIcon: Icon(Icons.map_outlined),
              label: 'Mapas',
              backgroundColor: Colors.amber
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.verified_user),
                activeIcon: Icon(Icons.verified_user_outlined),
                label: 'User',
                backgroundColor: Colors.blue
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.fiber_dvr),
                activeIcon: Icon(Icons.fiber_dvr_outlined),
                label: 'Fiber',
                backgroundColor: Colors.green
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.store),
                activeIcon: Icon(Icons.storage_outlined),
                label: 'Tienda',
                backgroundColor: Colors.red
            ),

          ]
        )
    );
  }

}