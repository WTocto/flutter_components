
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);


  void displayDialogIOS( BuildContext context){
    showCupertinoDialog(
      context: context, 
      builder: ( context ){
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar', style: TextStyle( color: Colors.red),)
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok')
            )
          ],
        );
      }
    ); 
  }

  void displayDialogAndroid(BuildContext context){
    
    showDialog(
      barrierDismissible: false, // cerrar dialogo
      context: context, 
      builder: (context ){
        return  AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(12) ),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ],
          ) ,
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar')
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok')
            )
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.indigo,
            shape: const StadiumBorder(),
            elevation: 0
          ), 
          onPressed: () => !Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context) ,
          child: const Padding(
            padding: EdgeInsets.all(20),
            child: Text('Mostrar Alerta', style: TextStyle(fontSize: 16)),
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        }
      ),
    );
  }
}
