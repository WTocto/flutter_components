 import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {

    const CustomCardType1({Key? key}) : super(key: key);

    @override
    Widget build ( BuildContext context){
      return  Card(
            child: Column(
              children:  [
                const ListTile  (
                  leading:  Icon( Icons.photo_album_outlined, color: Apptheme.primary),
                  title:  Text('Soy un titulos'),
                  subtitle: Text('Esse excepteur qui velit amet ullamco minim nisi excepteur reprehenderit labore in eiusmod et. Ea incididunt ea sit irure ad. Amet commodo aute in est reprehenderit occaecat ex consectetur aliquip velit Lorem et.'),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {}, 
                        child: const Text('Ok')
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
    }

}