import 'package:app_informativa_ite/const/nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_informativa_ite/const/fonts.dart';
import 'package:app_informativa_ite/widgets/paragraphs.dart';

class MisionVisionValues extends StatelessWidget {
  const MisionVisionValues({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Paragraphs p = Paragraphs();
    MediaQueryData queryData = MediaQuery.of(context);
    double heightSpace = queryData.size.height / 10;
    double widthSpace = queryData.size.width / 20;
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      navigationBar: navBar('Misión, Visión y Valores', popContext: context),
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: heightSpace / 2,
            bottom: heightSpace / 2,
            left: widthSpace / 2,
            right: widthSpace / 2,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: p.title('Misión, Visión y Valores'),
              ),
              p.subtitle('Misión'),
              p.paragraph(
                '“Ser una institución de educación superior tecnológica promotora del cambio social mediante la formación pertinente y equitativa de profesionistas con calidad integral”.',
                textAlign: TextAlign.justify,
              ),
              p.subtitle('Visión'),
              p.paragraph(
                '“Ser una institución líder en educación superior tecnológica, pilar del desarrollo sostenido, sustentable y equitativo de la región”.',
                textAlign: TextAlign.justify,
              ),
              p.subtitle('Objetivo'),
              p.paragraph(
                '“Proporcionar un Servicio Educativo de Calidad, orientado a la satisfacción de sus estudiantes”.',
                textAlign: TextAlign.justify,
              ),
              p.subtitle('Política de Calidad'),
              p.paragraph(
                'El Instituto Tecnológico de Ensenada establece el compromiso de implementar todos sus procesos, orientándolos a la satisfacción de sus estudiantes sustentada en la Calidad del Proceso Educativo, para cumplir con sus requerimientos mediante la eficacia de un Sistema de Gestión de Calidad y de mejora continua, conforme a la norma ISO9001:2008/NMX-CC-9001-IMNC-2008.',
                textAlign: TextAlign.justify,
              ),
              p.paragraph(
                'El Instituto Tecnológico de Ensenada establece el compromiso de implementar todos sus procesos, orientándolos a la satisfacción de sus estudiantes sustentada en la Calidad del Proceso Educativo, para cumplir con sus requerimientos mediante la eficacia de un Sistema de Gestión de Calidad y de mejora continua, conforme a la norma ISO9001:2008/NMX-CC-9001-IMNC-2008.',
                textAlign: TextAlign.justify,
              ),
              p.subtitle('Valores Institucionales'),
              p.listItemDescription(
                number: 1,
                itemName: 'Identidad:',
                itemDescription:
                    'Toma de conciencia del origen y sentido de pertenencia.',
              ),
              p.listItemDescription(
                number: 2,
                itemName: 'Liderazgo:',
                itemDescription:
                    'La influencia que se ejerce en las personas para lograr el bien común.',
              ),
              p.listItemDescription(
                number: 3,
                itemName: 'Respeto:',
                itemDescription:
                    'Comprensión y aceptación de los derechos propios y de los demás.',
              ),
              p.listItemDescription(
                number: 4,
                itemName: 'Responsabilidad:',
                itemDescription:
                    'Disposición para asumir el carácter de causa y consecuencia de nuestros actos.',
              ),
              p.listItemDescription(
                number: 5,
                itemName: 'Justicia:',
                itemDescription:
                    'Dar a cada uno lo que corresponde de forma imparcial.',
              ),
              p.listItemDescription(
                number: 6,
                itemName: 'Humanismo:',
                itemDescription: 'Pensamiento que valora la dignidad humana.',
              ),
              p.listItemDescription(
                number: 7,
                itemName: 'Honestidad:',
                itemDescription:
                    'Comportamiento que expresa decencia y honorabilidad en el decir y el actuar.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
