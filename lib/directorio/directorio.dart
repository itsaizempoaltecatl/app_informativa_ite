// ignore_for_file: must_be_immutable
import 'package:app_informativa_ite/const/nav_bar.dart';
import 'package:app_informativa_ite/directorio/sub_directorio/organigrama.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../const/mapeo.dart';

class Directory extends StatelessWidget {
  const Directory({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: navBar('Directorio',
          pushContext: context, pushPage: const OrganizationChart()),
      child: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
            child: Column(
          children: [
            RenderDirectory(title: 'Dirección', optionList: 'Direccion'),
            RenderDirectory(
                title: 'Subdirección Académica', optionList: 'Subdireccion'),
            RenderDirectory(
                title: 'Subdirección de Servicios Administrativos',
                optionList: 'Subdireccion Administrativos'),
            RenderDirectory(
                title: 'Subdirección de Planeación y Vinculación',
                optionList: 'Subdireccion PV'),
            RenderDirectory(
                title: 'Coordinación de carrera',
                optionList: 'Coordinacion Carrera'),
            RenderDirectory(
                title: 'Coordinaciones de posgrado',
                optionList: 'Coordinacion Posgrado'),
            RenderDirectory(
                title: 'Coordinaciones de sistema de gestión',
                optionList: 'Coordinaciones Gestion')
          ],
        )),
      ),
    );
  }
}

class RenderDirectory extends StatelessWidget {
  String title;
  String optionList;
  RenderDirectory({Key? key, required this.title, required this.optionList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(fontSize: 20),
          ),
          width: double.infinity,
          color: Colors.grey,
        ),
        Row(
          children: const [
            Expanded(child: Text("Cargo")),
            Expanded(child: Text("Nombre")),
            Expanded(child: Text("Correo")),
            Expanded(child: Text("Extensión"))
          ],
        ),
        BuilderIndex(
          optionList: optionList,
        )
      ],
    );
  }
}

class BuilderIndex extends StatelessWidget {
  String optionList;
  BuilderIndex({Key? key, required this.optionList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: listaDirectorio[optionList].length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: (index % 2 == 0) ? Colors.grey[100] : Colors.white,
              child: Row(
                children: [
                  BoxInfo(value: listaDirectorio[optionList][index]['Cargo']),
                  BoxInfo(value: listaDirectorio[optionList][index]['Nombre']),
                  BoxInfo(value: listaDirectorio[optionList][index]['Correo']),
                  BoxInfo(
                      value: listaDirectorio[optionList][index]['Extension']),
                ],
              ),
            );
          }),
    );
  }
}

class BoxInfo extends StatelessWidget {
  String value;
  BoxInfo({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        value,
        style: const TextStyle(fontSize: 12),
      ),
    );
  }
}
