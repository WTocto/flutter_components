import 'package:flutter/material.dart';



class CustomInpuField extends StatelessWidget {
  final String? hintText;
  final String? labeltext;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final  Map<String, String> formValues;


  const CustomInpuField({
    super.key,
    this.hintText, 
    this.labeltext, 
    this.helperText, 
    this.icon, 
    this.suffixIcon, 
    this.keyboardType,
    this.obscureText = false, 
    required this.formProperty, 
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value){
        formValues[formProperty] = value;
      },
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;              
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: hintText,
        labelText: labeltext,
        helperText:  helperText,
       // prefixIcon: Icon( Icons.verified_user_outlined),
        suffixIcon: suffixIcon == null ? null : Icon(icon),
        icon: icon == null ? null : Icon(icon),
    
        //ESTA ES UNA FORMA DE SOBREESCRIBIR EL DISÑEO DE L TEXTFIELD
        /*focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          )
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )
        )*/
      ),
    );
  }
}
