import 'package:app_informativa_ite/const/fonts.dart';
import 'package:app_informativa_ite/const/nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrganizationChart extends StatelessWidget {
  const OrganizationChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: navBar('Organigrama', popContext: context),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
          color: Colors.white,
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text("Subdirección Académica"),
              Image.network(
                  'https://www.ensenada.tecnm.mx/wp-content/uploads/2021/07/subdireccion-academica.png'),
              const SizedBox(
                height: 20,
              ),
              const Text("Subdirección de Servicios Administrativos"),
              Image.network(
                  'https://www.ensenada.tecnm.mx/wp-content/uploads/2021/07/subdireccion-servicios.png'),
              const SizedBox(
                height: 20,
              ),
              const Text("Subdirección de Planeación y Vinculación"),
              Image.network(
                  'https://www.ensenada.tecnm.mx/wp-content/uploads/2021/07/subdireccion-academica.png'),
            ],
          )),
        ));
  }
}
