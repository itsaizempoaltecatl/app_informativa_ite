import 'package:flutter/material.dart';

class Directory extends StatelessWidget {
  Directory({Key? key}) : super(key: key);
int vueltas =0;
late int i;
bool primera = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(child: const Text("Direccíon", textAlign: TextAlign.center, ), color: Colors.grey, width: double.infinity,),
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
            Text("Cargo"),
            Text("Nombre"),
            Text("Correo"),
          ],),
          contenidoDirectorio(context, 'Direccion'),
          Container(child: const Text("Subdireccíon Académica", textAlign: TextAlign.center, ), color: Colors.grey, width: double.infinity,),
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
            Text("Cargo"),
            Text("Nombre"),
            Text("Correo"),
            Text("Extensíon"),
          ],),
          contenidoDirectorio_(context, 'Subdireccion'),
          Container(child: const Text("Subdireccion Administrativos", textAlign: TextAlign.center, ), color: Colors.grey, width: double.infinity,),
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
            Text("Cargo"),
            Text("Nombre"),
            Text("Correo"),
            Text("Extensíon"),
          ],),
          contenidoDirectorio_(context, 'Subdireccion Administrativos'),
        ],
      ),
    );
  }
  Map listaDirectorio={
    'Direccion': { 
      0: {'Cargo':'Direccíon', 'Nombre':{0:'Sánchez Beltrán', 1:'Valentin Arquímides'}, 'Correo': {0:'dir_ensenada@tecnm.mx', 1:'direccion@ite.edu.mx'} }
      },
    'Subdireccion':{
      0: {'Cargo': 'Subdireccion academica', 'Nombre':'Leal Nodal Juan Carlos', 'Correo': 'acad_ensenada@tecnm.mx subacad@ite.edu.mx', 'Extension':'2014'},
      1: {'Cargo': 'Ciencias Básicas', 'Nombre':'Vite Frías Juan Pablo', 'Correo': 'cbas_ensenada@tecnm.mx basicas@ite.edu.mx', 'Extension':'2012'},
      2: {'Cargo': 'Ingeniería Industrial', 'Nombre':'      ', 'Correo': 'ing_ensenada@tecnm.mx iind@ite.edu.mx', 'Extension':'2018'},
      3: {'Cargo': 'Ingeniería Eléctrica y Electrónica', 'Nombre':'Ramos Flores Francisco', 'Correo':'diee@ite.edu.mx', 'Extension':'2010'},
      4: {'Cargo': 'Sistemas y Computación', 'Nombre':'Parra Velázquez Octavio', 'Correo':'sistemas@ite.edu.mx', 'Extension':'2008'},
      5: {'Cargo': 'Ciencias Económico Administrativas', 'Nombre':'Espinoza Figueroa Juan Manuel', 'Correo':'cead_ensenada@tecnm.mx economico@ite.edu.mx', 'Extension':'2013'},
      6: {'Cargo': 'Desarrollo Académico', 'Nombre':'Serrato Rivera Aurora', 'Correo':'dda_ensenada@tecnm.mx desarrollo@ite.edu.mx', 'Extension':'3004'},
      7: {'Cargo': 'Divisíon de Postgrado e Investigación', 'Nombre':'Bugarin Carlos Eusebio', 'Correo':'depi_ensenada@tecnm.mx posgrado@ite.edu.mx', 'Extension':'3005'},
      8: {'Cargo': 'División de Estudios Profesionales', 'Nombre':'Figueroa Valdéz Gladys Carlota', 'Correo':'dep_ensenada@tecnm.mx division@ite.edu.mx', 'Extension':'2011'},
    },
    'Subdireccion Administrativos':{
      0: {'Cargo': 'Subdirección de Servicios Administrativos', 'Nombre':'De la Rosa Ramírez Victor', 'Correo':'admon_ensenada@tecnm.mx subadmin@ite.edu.mx', 'Extension':'4006'},
      1: {'Cargo': 'Centro de Computo', 'Nombre':'Tirado Ochoa Oscar Martín', 'Correo':'cc_ensenada@tecnm.mx computo@ite.edu.mx', 'Extension':'3001'},
      2: {'Cargo': 'Recursos Humanos', 'Nombre':'Hernández Hernández Christian Guillermo', 'Correo':'rh_ensenada@tecnm.mx rechumanos@ite.edu.mx', 'Extension':'4010'},
      3: {'Cargo': 'Recursos Materiales y Servicios', 'Nombre':'Cruz Cruz Karla Fernanda', 'Correo':'rm_ensenada@tecnm.mx recmateriales@ite.edu.mx', 'Extension':'5004'},
      4: {'Cargo': 'Recursos Financieros', 'Nombre':'Orta Portes Ana María', 'Correo':'rf_ensenada@tecnm.mx recfinancieros@ite.edu.mx', 'Extension':'4017'},
      5: {'Cargo': 'Manteniemiento y Equipo', 'Nombre':'Valle Peñuelas Fernando', 'Correo':'mantenimiento@ite.edu.mx', 'Extension':'5003'},
    },
    'Subdireccion PV':{
      0: {'Cargo': 'Subdirección de Planeación y Vinculación', 'Nombre':'Medina Sandoval Eliazar', 'Correo':'plan_ensenada@tecnm.mx subplan@ite.edu.mx', 'Extension':'4007'},
      1: {'Cargo': 'Planeación, Programación y Presupuesto', 'Nombre':'Castillo Aranda Josué Ernesto', 'Correo':'pl_ensenada@tecnm.mx planeacion@ite.edu.mx', 'Extension':'4012'},
      2: {'Cargo': 'Gestión Tecnológica y Vinculación', 'Nombre':'Rodríguez Rivas Mónica', 'Correo':'vin_ensenada@tecnm.mx gestion@ite.edu.mx', 'Extension':'2001'},
      3: {'Cargo': 'Comunicación y Difusión', 'Nombre':'Escareño Gálvez Paula Aurora', 'Correo':'cyd_ensenada@tecnm.mx comunicacion@ite.edu.mx', 'Extension':'4013'},
      4: {'Cargo': 'Actividades Extraescolares', 'Nombre':'Rodríguez Rodríguez Ma Gloria', 'Correo':'ext_ensenada@tecnm.mx extraescolares@ite.edu.mx', 'Extension':'5002'},
      5: {'Cargo': 'Centro de Información', 'Nombre':'Chávez Remigio Julia Elvia', 'Correo':'ci_ensenada@tecnm.mx cinformacion@ite.edu.mx', 'Extension':'1002'},
      6: {'Cargo': 'Servicios Escolares', 'Nombre':'Hernández Ayón Sara Eugenia', 'Correo':'se_ensenada@tecnm.mx escolares@ite.edu.mx', 'Extension':'4016'},
    },
    'Coordinacion Carrera':{
      0: {'Cargo': 'División de Estudios Profesionales', 'Nombre':'Figueroa Valdéz Gladys Carlota', 'Correo':'dep_ensenada@tecnm.mx division@ite.edu.mx', 'Extension':'2011'},
      1: {'Cargo': 'Coordinadora de la Carrera de Ingeniería Eletrómecanica', 'Nombre':'Medina Félix Vayra Valeria', 'Correo':'coord_electromecanica@ite.edu.mx', 'Extension':'2007'},
      2: {'Cargo': 'Coordinador de la Carrera de Eletrónica', 'Nombre':'Moreno Rochín Jorge Antonio', 'Correo':'coord_electronica@ite.edu.mx', 'Extension':'1063'},
      3: {'Cargo': 'Coordinadora de la Carrera de Ingeniería Gestion Empresarial', 'Nombre':'Buenrostro Torres Martha Leticia', 'Correo':'coord_gestion@ite.edu.mx', 'Extension':'2005'},
      4: {'Cargo': 'Coordinadora de la Carrera de Ingeniería Industrial', 'Nombre':'Murillo Silva Arely', 'Correo':'coord_industrial@ite.edu.mx', 'Extension':'2004'},
      5: {'Cargo': 'Coordinador de la Carrera de Mecatrónica', 'Nombre':'Hernández Capuchin Ismael', 'Correo':'coord_mecatronica@ite.edu.mx', 'Extension':'2003'},
      6: {'Cargo': 'Coordinadora de la Carrera de Ingeniería en Sistemas Computacionales', 'Nombre':'Campero León Lourdez Esthepanie', 'Correo':'coord_sistemas@ite.edu.mx', 'Extension':'2006'},
      7: {'Cargo': 'Coordinadora de la Carrera de Licenciatura en Administración', 'Nombre':'Guadalupe Vázquez Margarita', 'Correo':'coord_administracion@ite.edu.mx', 'Extension':'----'},
      8: {'Cargo': 'Coordinadora de la Carrera de Ingeniería Industrial Educación a Distancia', 'Nombre':'Castaño Lafarga Sarahí', 'Correo':'coord_adistancia@ite.edu.mx', 'Extension':'1064'},
      9: {'Cargo': 'Coordinador de la Carrera de Ingeniería Gestión Empresarial Educación a Distancia', 'Nombre':'Anaya Bazúa Alfredo Alejandro', 'Correo':'coord_adistancia2@ite.edu.mx', 'Extension':'1064'},
    },
    'Coordinacion Posgrado':{
      0: {'Cargo': 'Coordinador de la Especialización en Industrial Aeroespacial', 'Nombre':'Campos García Josefina', 'Correo':'coord_eia@ite.edu.mx', 'Extension':'1063'},
      1: {'Cargo': 'Coordinador de la Maestría en Ingeniería Aeroespacial', 'Nombre':'Campos García Josefina', 'Correo':'coord_mia@ite.edu.mx', 'Extension':'1063'},
      2: {'Cargo': 'Coordinador de la Maestría en Ciencias en Ingeniería Mecatrónica', 'Nombre':'     ', 'Correo':'coord_mcim@ite.edu.mx', 'Extension':'3005'},
    },
    'Coordinaciones Gestion':{
      0: {'Cargo': 'Coordinador del Sistema de Gestión de la Calidad', 'Nombre':'Gutiérrez Manuel Carlos Alberto', 'Correo':'sgc@ite.edu.mx', 'Extension':'----'},
      1: {'Cargo': 'Coordinadora del Sistema de Gestión Ambiental', 'Nombre':'Ardines Castillo Jocelyn Giselle', 'Correo':'sga@ite.edu.mx', 'Extension':'----'},
      2: {'Cargo': 'Coordinadora del Modelo de Igualdad de Género', 'Nombre':'Ochoa Gaytán Wendy', 'Correo':'igualdad@ite.edu.mx', 'Extension':'----'},
      3: {'Cargo': 'Coordinador del Sistema de Gestión de Seguridad y Salud en el Trabajo', 'Nombre':'Peña Miranda Sergio', 'Correo':'seguridad@ite.edu.mx', 'Extension':'----'},
      4: {'Cargo': 'Coordinador de Residuos Sólidos Urbanos y Residuos Peligrosos', 'Nombre':'Anaya Bázua Alfredo Alejandro', 'Correo':'aanaya@ite.edu.mx', 'Extension':'----'},
      5: {'Cargo': 'Coordinador del Uso Eficiente de Agua y Energía Eletrica', 'Nombre':'Valle Peñuelas Fernando', 'Correo':'mantenimiento@ite.edu.mx', 'Extension':'----'},
    }
  };

  Widget contenidoDirectorio(BuildContext context, String seccion) {
      return Center(child: Row( 
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(listaDirectorio[seccion][0]['Cargo'].toString()), 
      Text(listaDirectorio[seccion][0]['Nombre'][0].toString()+"\n"+
          listaDirectorio[seccion][0]['Nombre'][1].toString()),
      Text(listaDirectorio[seccion][0]['Correo'][0].toString()+"\n"+
          listaDirectorio[seccion][0]['Correo'][1].toString()),
    ],));
  }

  Widget contenidoDirectorio_(BuildContext context, String seccion,)
  {
    if(seccion == 'Subdireccion')
    {
      return 
    Center(child: 
    Column(
      children: [
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][0]['Cargo'].toString()), width: 95,), 
          SizedBox(child: Text(listaDirectorio[seccion][0]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][0]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][0]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][1]['Cargo'].toString()), width: 95,), 
          SizedBox(child: Text(listaDirectorio[seccion][1]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][1]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][1]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][2]['Cargo'].toString()), width: 95,), 
          SizedBox(child: Text(listaDirectorio[seccion][2]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][2]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][2]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][3]['Cargo'].toString()), width: 95,), 
          SizedBox(child: Text(listaDirectorio[seccion][3]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][3]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][3]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][4]['Cargo'].toString()), width: 95,), 
          SizedBox(child: Text(listaDirectorio[seccion][4]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][4]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][4]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][5]['Cargo'].toString()), width: 95,), 
          SizedBox(child: Text(listaDirectorio[seccion][5]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][5]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][5]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][6]['Cargo'].toString()), width: 95,), 
          SizedBox(child: Text(listaDirectorio[seccion][6]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][6]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][6]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][7]['Cargo'].toString()), width: 95,), 
          SizedBox(child: Text(listaDirectorio[seccion][7]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][7]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][7]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][8]['Cargo'].toString()), width: 95,), 
          SizedBox(child: Text(listaDirectorio[seccion][8]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][8]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][8]['Extension']),
          ],
          ),
      ],
    )
      );
    }
    if(seccion == 'Subdireccion Administrativos')
    {
      return
      Center(child: Column(
        children: [
          const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][0]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][0]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][0]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][0]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][1]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][1]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][1]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][1]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][2]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][2]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][2]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][2]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][3]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][3]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][3]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][3]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][4]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][4]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][4]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][4]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][5]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][5]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][5]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][5]['Extension']),
          ],
          ),
        ],
      ),
      );
    }
    if(seccion == 'Subdireccion PV')
    {
      return
      Center(child: Column(
        children: [
          const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][0]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][0]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][0]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][0]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][1]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][1]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][1]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][1]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][2]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][2]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][2]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][2]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][3]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][3]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][3]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][3]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][4]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][4]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][4]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][4]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][5]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][5]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][5]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][5]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][6]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][6]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][6]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][6]['Extension']),
          ],
          ),
        ],
      ),
      );
    }
    if(seccion == 'Coordinacion Carrera')
    {
      return
      Center(child: Column(
        children: [
          const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][0]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][0]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][0]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][0]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][1]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][1]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][1]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][1]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][2]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][2]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][2]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][2]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][3]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][3]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][3]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][3]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][4]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][4]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][4]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][4]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][5]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][5]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][5]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][5]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][6]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][6]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][6]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][6]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][7]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][7]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][7]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][7]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][8]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][8]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][8]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][8]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][9]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][9]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][9]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][9]['Extension']),
          ],
          ),
        ],
      ),
      );
    }
    if(seccion == 'Coordinacion Posgrado')
    {
      return
      Center(child: Column(
        children: [
          const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][0]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][0]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][0]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][0]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][1]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][1]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][1]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][1]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][2]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][2]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][2]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][2]['Extension']),
          ],
          ),
        ],
      ),
      );
    }
    if(seccion == 'Coordinacion Gestion')
    {
      return
      Center(child: Column(
        children: [
          const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][0]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][0]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][0]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][0]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][1]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][1]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][1]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][1]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][2]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][2]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][2]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][2]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][3]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][3]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][3]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][3]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][4]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][4]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][4]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][4]['Extension']),
          ],
          ),
          const SizedBox(height: 5,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(child: Text(listaDirectorio[seccion][5]['Cargo'].toString()), width: 90,), 
          SizedBox(child: Text(listaDirectorio[seccion][5]['Nombre'].toString()), width: 80,),
          SizedBox(child: Text(listaDirectorio[seccion][5]['Correo'].toString()), width: 170,),
          Text(listaDirectorio[seccion][5]['Extension']),
          ],
          ),
        ],
      ),
      );
    }
    return 
    Center(child: 
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      SizedBox(child: Text(listaDirectorio[seccion][0]['Cargo'].toString()), width: 80,), 
      SizedBox(child: Text(listaDirectorio[seccion][0]['Nombre'].toString()), width: 80,),
      SizedBox(child: Text(listaDirectorio[seccion][0]['Correo'].toString()), width: 170,),
      Text(listaDirectorio[seccion][0]['Extension']),
      ],
      ));
  }
}

