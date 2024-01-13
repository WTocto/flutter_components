import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
            title: const Text(
              'Componentes en Flutter',
              style: TextStyle(color: Colors.white),
            ),
            elevation: 0,
            centerTitle: true,
            ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  leading: Icon(
                    menuOptions[i].icon,
                    color: Apptheme.primary,
                  ),
                  title: Text(menuOptions[i].name),
                  onTap: () {
                    //final route = MaterialPageRoute(
                    //    builder: (context) => const ListView1Screen());
                    Navigator.pushNamed(context, menuOptions[i].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
