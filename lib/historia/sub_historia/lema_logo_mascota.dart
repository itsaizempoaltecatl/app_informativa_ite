import 'package:app_informativa_ite/const/fonts.dart';
import 'package:app_informativa_ite/const/nav_bar.dart';
import 'package:app_informativa_ite/widgets/paragraphs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MottoLogoPet extends StatelessWidget {
  const MottoLogoPet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Paragraphs p = Paragraphs();
    MediaQueryData queryData = MediaQuery.of(context);
    double heightSpace = queryData.size.height / 10;
    double widthSpace = queryData.size.width / 20;
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      navigationBar: navBar('Lema, logo y mascota', popContext: context),
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
                child: p.title('Lema, Logo y Mascota'),
              ),
              p.subtitle('Lema'),
              p.paragraph(
                'Por la Tecnología de Hoy y del Futuro®',
                textAlign: TextAlign.justify,
              ),
              p.subtitle('Logo'),
              const SizedBox(
                height: 5,
              ),
              //const Placeholder(),
              Center(
                child: Image.network(
                  'https://www.ensenada.tecnm.mx/wp-content/uploads/2020/09/Logo-Registrado-ITE.jpg',
                ),
              ),
              p.listItemDescription(
                itemName: 'Átomo:',
                itemDescription: 'Representa a Ingeniería Electrónica',
              ),
              p.listItemDescription(
                itemName: 'Torre, Cables y Engranes:',
                itemDescription: ' Representa a Ingeniería Electromecánica',
              ),
              p.listItemDescription(
                itemName: 'El Conjunto:',
                itemDescription: 'Representa a Ingeniería Industrial',
              ),
              p.listItemDescription(
                itemName: 'Albatros:',
                itemDescription: 'Mascota del ITE',
              ),
              p.listItemDescription(
                itemName: 'Textos:',
                itemDescription:
                    'Iniciales del Instituto Tecnológico de Ensenada y la ciudad donde se ubica',
              ),
              Center(
                child: Image.network(
                  'https://www.ensenada.tecnm.mx/wp-content/uploads/2020/09/Albatros1-300x290.jpg',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              p.paragraph(
                'Los Albatros tienen las alas estrechas y sumamente largas, pueden exceder los 3 metros de extensión. Adaptación que les permite planear sin ningún esfuerzo, y poder despegar con sólo abrir las alas en contra del viento.',
                textAlign: TextAlign.justify,
              ),
              p.paragraph(
                'El color predominante del plumaje de todos los albatros es blanco y negro, con ciertas tonalidades de gris oscuro.',
                textAlign: TextAlign.justify,
              ),
              p.paragraph(
                'La alimentación de estas aves se basa principalmente en calamares. Los atrapan en la superficie del mar en las horas de la noche.',
                textAlign: TextAlign.justify,
              ),
              p.paragraph(
                'Al igual que los otros tubinares, los albatros tienen el pico formado por planchas óseas. La nariz es en forma de dos tubos, visibles en ambos lados en la parte superior del pico.',
                textAlign: TextAlign.justify,
              ),
              p.paragraph(
                'La reproducción de estas aves es muy lenta. Sólo ponen un huevo, y muchas veces no se logra el pichón. Pero los adultos viven muchos años, compensando por la reducida población de jóvenes. No es extraño que un albatros críe por más de 20 años con la misma pareja. Se sabe de una hembra de 58 años que aun estaba criando. No todos llegan allá, pero pueden vivir hasta los 80 años.',
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
