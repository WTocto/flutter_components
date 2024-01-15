
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';


class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text('Card Wideget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children:  const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(name: 'Un hermoso Paisaje', imageUrl: 'https://images.unsplash.com/photo-1503614472-8c93d56e92ce?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D'),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://cdn.shopify.com/s/files/1/0163/6622/files/Landscape_Photo_Tips.jpg?v=1660006499'),
          SizedBox(height: 10),
          CustomCardType2(name: 'Unas hermosas flores', imageUrl: 'https://www.nyip.edu/images/cms/photo-articles/the-best-place-to-focus-in-a-landscape.jpg',),
          SizedBox(height: 150),
        ],
      )
    );
  }
}

