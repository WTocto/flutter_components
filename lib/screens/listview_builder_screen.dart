import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuiderScreen extends StatefulWidget {
  const ListViewBuiderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuiderScreen> createState() => _ListViewBuiderScreenState();
}

class _ListViewBuiderScreenState extends State<ListViewBuiderScreen> {

  final List<int> imageids = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  bool isloading = false;

  @override
  void initState(){
    super.initState();
      scrollController.addListener(() {
      //print('${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
        if ( (scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent){
          //Sirve para que cuando el escrolles este en 500 se pueda mandar a carga 5 imagnes mas
          //add5();
          fetchData();
        }
      }
    );
  }
  Future fetchData() async{
    if (isloading) return;
    isloading = true;
    setState(() {});
    await Future.delayed(Duration(seconds: 3));
    add5();
    isloading = false;
  }

  void add5(){
    final lastid = imageids.last;
    imageids.addAll(
      [1,2,3,4,5].map((e) => lastid + e)
    );
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return  Scaffold(
        body:  MediaQuery.removePadding( // el media aquery sorve para eliminar el espacio que queda al pricncipio de la pantalla
          context: context,  // para remover el espacio

          removeTop: true, // sirve para remover espacion vacio si appbar
          removeBottom: true,

          child: Stack(
            children: [
              ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                itemCount: imageids.length,
                itemBuilder: (BuildContext context, int  index ){
                  return FadeInImage(
                    width: double.infinity, // que tome  all el ancho posble y tambien que la imagen se adapte mas rapido y haga un salto y luego se acomode
                    height: 300,
                    fit: BoxFit.cover, //para que la imagen tome el espacio que queda entre imagen  e imagen sin dejar espacios
                    placeholder: const AssetImage('assets/jar-loading.gif'),
                    image: NetworkImage('https://picsum.photos/500/300?image=${imageids[index] + 1}')
                  );
                }
              ),
              //este container funciona con el satck widget
              Positioned( // este srive para cpolocral en cualquoer psocion dentro de un stack
                bottom: 40,
                left: size.width * 0.5 - 30, // para ajustar el widget en la mitad de la pantalla ya que la pantala esta a 60
                child: const _LoadingIcon()
              )
            ],

          ),
        )
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape : BoxShape.circle
      ),
      child: const CircularProgressIndicator( color: Apptheme.primary),
    );
  }
}


