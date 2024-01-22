import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFomrKey = GlobalKey<FormState>();
    

    final Map<String, String> formValues = {
      'first_name': 'William',
      'last_name' : 'Tocto',
      'email'     : 'williamtocto@gmail.com',
      'password'  : '12345',
      'role'      : 'admin',
    };

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFomrKey,
            child: Column(
              children: [
                CustomInpuField(labeltext: 'Nombre', hintText: 'Nombre del Usuario', icon : Icons.input, formProperty: 'first_name', formValues: formValues),
                const SizedBox(height: 30),

                CustomInpuField(labeltext: 'Apellido', hintText: 'Apellido del Usuario', icon : Icons.power_input_rounded, formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30),

                CustomInpuField(labeltext: 'Correo', hintText: 'Correo del Usuario', icon : Icons.power_input_rounded, keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30),

                CustomInpuField(labeltext: 'Contraseña', hintText: 'Contraseña del Usuario', icon : Icons.power_input_rounded, obscureText: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30),

                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem( value: 'Admin',child: Text ('Admin')),
                    DropdownMenuItem( value: 'SuperUser',child: Text ('SuperUser')),
                    DropdownMenuItem( value: 'Developer',child: Text ('Developer')),
                    DropdownMenuItem( value: 'Junior Developer',child: Text ('Junior Developer')),
                  ], 
                  onChanged: ( value ){
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  }
                
                ),

                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode()); // Esconder el teclado despues de dar clic en un boton
                    if (!myFomrKey.currentState!.validate()){
                      print('Formulario no válido');
                      return;
                    }
                    print(formValues);
                  }, 
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, 
                    backgroundColor: Apptheme.primary, // Color del texto del botón
                  ),
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar')
                    )
                  )
                )
              ]
            ),
          ),
        ),
      )
    );
  }
}
