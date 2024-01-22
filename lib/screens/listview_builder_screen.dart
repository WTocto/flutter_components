import 'package:flutter/material.dart';

class ListViewBuiderScreen extends StatefulWidget {
  const ListViewBuiderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuiderScreen> createState() => _ListViewBuiderScreenState();
}

class _ListViewBuiderScreenState extends State<ListViewBuiderScreen> {

  final List<int> imageids = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();


  
  @override
  void initState(){
    super.initState();
      scrollController.addListener(() {
      //print('${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');

        if ( (scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent){
          add5();
        }
      }
    );
  }

  void add5(){
    final lastid = imageids.last;
    imageids.addAll(
      [1,2,3,4,5].map((e) => lastid + e)
    );
    setState(() {
      
    });

  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:  MediaQuery.removePadding( // el media aquery sorve para eliminar el espacio que queda al pricncipio de la pantalla
          context: context,  // para remover el espacio

          removeTop: true, // sirve para remover espacion vacio si appbar
          removeBottom: true,

          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            controller: scrollController,
            itemCount: imageids.length,
            itemBuilder: (BuildContext context, int  index ){
              return FadeInImage(
                width: double.infinity, // qur tome  todo el ancho posble y tambien que la imagen se adapte mas rapido y haga un salto y luego se acomode
                height: 300,
                fit: BoxFit.cover, //para que la imagen tome el espacio que queda entre imagen  e imagen sin dejar espacios
                placeholder: const AssetImage('assets/jar-loading.gif'), 
                image: NetworkImage('https://picsum.photos/500/300?image=${imageids[index] + 1}')   
              );
          
            }
          ),
        )
    );
  }
}
