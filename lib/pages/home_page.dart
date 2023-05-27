import 'package:flutter/material.dart';

import 'login_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Fondo(),
          Center(child: Contenido())
        ],
      ),
    );
  }
}


// Fondo

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(200, 41, 30, 215),
            Color.fromARGB(200, 190, 64, 244),
            Color.fromARGB(200, 212, 42, 140)
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft
        )
      ),
    );
  }
} 







//Contenido

class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              'img/start.png',
              fit: BoxFit.cover,
              width: 150, // ajusta el ancho según tus necesidades
              height: 150, // ajusta la altura según tus necesidades
            ),
          ),

          const SizedBox(height: 20,),

          const Text('Welcome',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
            ),
          ),

          const SizedBox(height: 50,),

          Container(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(  
            style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.white),
          ),
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => LoginPage())
              );
            },
            child: const Text(
              'Get Started',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                letterSpacing: 2
              ),
            ),
          ),
        ),

          //boton
        ],
      ),
    );
  }
}