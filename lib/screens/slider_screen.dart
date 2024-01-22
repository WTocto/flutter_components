import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {

  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _slidervalue = 100;

  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: const Text('Slider and Checks'),
        shadowColor: Colors.white,
      ),
      body: Column(
        children: [

          Slider.adaptive(  //Se adapta ya sea a andporid y iphone
            min: 50,
            max: 400,
            activeColor: Apptheme.primary,
            value: _slidervalue,
            onChanged:  _sliderEnable 
            ? (value){
              _slidervalue = value;
              setState(() { });
              }
            : null
          ),

          /*
          Checkbox(  //hacer un check
            value: _sliderEnable, 
            onChanged: (value){
              _sliderEnable = value ?? true;
              setState(() {});
            }
          ),
          */

          CheckboxListTile( //hacer un check con un titulo
            activeColor: Apptheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnable, 
            onChanged: (value) => setState(() {
              _sliderEnable = value ?? true;
            })
          ),

          /*Switch( //un check diferente mas chverere
            value: _sliderEnable, 
            onChanged: (value) => setState(() {
              _sliderEnable = value;
            })
          ),  */

          SwitchListTile.adaptive( //se adpata a la plataforma ya sea andorid o ios
            activeColor: Apptheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnable, 
            onChanged: (value) => setState(() {
              _sliderEnable = value;
            })
          ),

          const AboutListTile(),

          Expanded( //para que la imagen no de error cuando se den¡borde y me permita hacer scroll
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://www.shutterstock.com/image-vector/muscle-body-big-batman-design-600nw-2304584009.jpg'),
                fit: BoxFit.contain,
                width: _slidervalue,
              ),
            ),
          ),
          const SizedBox(height: 50,)
        ],
      )
    );
  }
}
