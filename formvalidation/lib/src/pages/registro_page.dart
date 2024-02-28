import 'package:flutter/material.dart';


// ignore: camel_case_types
class registropage extends StatelessWidget {
  const registropage({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla de Registro'),
      ),
        body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: RegistroForm(),
      ),
    );
  }
}

class RegistroForm extends StatefulWidget {
  const RegistroForm({Key? key}) : super(key: key);

  @override
  _RegistroFormState createState() => _RegistroFormState();
}

class _RegistroFormState extends State<RegistroForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  // Puedes agregar más controladores para otros campos según sea necesario

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _usernameController,
            decoration: const InputDecoration(labelText: 'Nombre de usuario'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese un nombre de usuario';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(labelText: 'Contraseña'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingrese una contraseña';
              }
              return null;
            },
          ),
          // Puedes agregar más campos aquí según sea necesario

          SizedBox(height: 16.0),

          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Realiza la lógica de registro aquí
                // Puedes acceder a los datos ingresados usando _usernameController.text y _passwordController.text
              }
            },
            child: const Text('Registrarse'),
          ),
        ],
      ),
    );
  }
}