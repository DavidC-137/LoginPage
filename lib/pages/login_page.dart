import 'package:flutter/material.dart';

import '../utils/frosted_glass.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: const [
          Fondo(),
          Center(child: Contenido())
        ],
      ),
    );
  }
}

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


class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        child: const FrostedGlassBox(
          theWidth: double.infinity,
          theHeigth: 500,
          theChild: Padding(
            padding: EdgeInsets.all(15.0),
            child: Form(),
          )
        ),
      ),
    );
  }
}


class Form extends StatefulWidget {
  const Form({super.key});

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {

  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20,),

          const Text('Sing in and continue',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w400,
              letterSpacing: 3
            ),
          ),

          const SizedBox(height: 30,),
          
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              label: Text('Username'),
              labelStyle: TextStyle(
                color: Colors.white,
              )
            ),
          ),

          const SizedBox(height: 15,),

          TextFormField(
            obscureText: obs,
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              label: const Text('Password'),
              labelStyle: const TextStyle(
                color: Colors.white,
              ),
              suffixIcon: IconButton(
                icon: const Icon(Icons.remove_red_eye_outlined, color: Colors.white,),
                  onPressed: () {
                    setState(() {
                      obs == true ? obs=false : obs=true;
                    });
                  },
                )
            ),
          ),

          const SizedBox(height: 35,),

          Container(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(  
            onPressed: () {},
            style: ButtonStyle(  
              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 255, 255)),
            ),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                letterSpacing: 2
              ),
            ),
          ),
        ),

        const SizedBox(height: 15,),

        Container(
        width: double.infinity,
        height: 50,
        child: OutlinedButton(  
          style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.white),
        ),
          onPressed: () {},
          child: const Text(
            'Sign with Google',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 15,
              letterSpacing: 2
            ),
          ),
        ),
        ),

        const SizedBox(height: 20,),


        ],
      ) 
    );
  }
}