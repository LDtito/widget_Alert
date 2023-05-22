
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class MyApp extends StatelessWidget {
  static String _title = 'ejemplo Tito';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Tito(),
    );
  }
}

class Tito extends StatefulWidget {
  Tito({super.key});

  @override
  State<Tito> createState() => _TitoState();
}
class _TitoState extends State<Tito> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
          title: const Text('HENRY Tito'),
        ),
        body: Center(
          child: Column(
            children: <Widget> [
              Container(
                child:  const Text(
                  'MOTOS DE ALTA CILINDRAJE',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 2,
                    color: Color.fromRGBO(2, 2, 2, 1),
                    fontFamily: 'cursive',
                  ),
                ),
              ),
              
              SizedBox(
                height: 250.0,
                width: 350.0,
                child: Image.network('https://image.winudf.com/v2/image/Y29tLmRyZWFtNGFwcC5XYWxscGFwZXJzWWFtYWhhWVpGUjZfc2NyZWVuXzNfMTUzNzYwNzQwM18wNDE/screen-3.webp?fakeurl=1&type=.webp'),
              ),
              Text('yamaha r6'),
              SizedBox(width: 40,),
              ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('SIN CONTENIDO PARA MOSTAR'),
                      icon: Icon(Icons.warning, 
                      color: Colors.red,),
                      
                      content: Text(
                          'ERROR 444:"NOT FOUND"'),
                          
                      actions: [
                        TextButton(
                          child: Text('Cerrar'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
               child: const Text('Comprar aquí!!'),
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // Cambia el color de fondo del botón
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Cambia el color del texto del botón
  ),

              
            ),
       
              
            ],
          ),
        ),
         bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255), // Cambia el color de fondo según tus necesidades
        selectedItemColor: Colors.green, // Cambia el color del ítem seleccionado según tus necesidades
        unselectedItemColor: Colors.grey, // Cambia el color de los ítems no seleccionados según tus necesidades
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.house), // Cambia el ícono según tus necesidades
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), // Cambia el ícono según tus necesidades
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // Cambia el ícono según tus necesidades
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}