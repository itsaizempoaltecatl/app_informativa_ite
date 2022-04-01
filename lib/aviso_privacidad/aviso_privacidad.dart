import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color(0xFF1b396a),
        middle: Text(
          'Aviso de Privacidad',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          color: Colors.white,
          child: Column(
            children: [
              RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                  text: 'Aviso de Privacidad\n\n ',
                  style: TextStyle(fontSize: 25.0, color: Colors.black),
                ),
              ),
              RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                      text:
                          'INSTITUTO TECNOLOGICO DE ENSENADA, mejor conocido como ITE, con domicilio en calle BLVD TECNOLOGICO 150, colonia EX EJIDO CHAPULTEPEC, ciudad ENSENADA, municipio o delegación ENSENADA, cp. 22780, en la entidad de BAJA CALIFORNIA, país MEXICO, y portal de internet www.ensenada.tecnm.mx/sii, gestion.ensenada.tecnm.mx, es el responsable del uso y protección de sus datos personales, y al respecto le informamos lo siguiente:\n\n',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      children: [
                        TextSpan(
                            text:
                                '¿Para qué fines utilizaremos sus datos personales?\n\n',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                'Los datos personales que recabamos de usted, los utilizaremos para las siguientes finalidades que son necesarias para el servicio que solicita:\n\n•Para la inscripción del alumno en el sistema escolar\n•Reclutamiento, contratación y selección del personal\n\n'),
                        TextSpan(
                            text:
                                'De manera adicional, utilizaremos su información personal para las siguientes finalidades secundarias que'),
                        TextSpan(
                            text: ' no son necesarias ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                'para el servicio solicitado, pero que nos permiten y facilitan brindarle una mejor atención\n\n•para creación, análisis, estudio, conservación y actualización del expediente del estudiante durante su carrera escolar así como seguimiento de egresado\n\nEn caso de que no desee que sus datos personales sean tratados para estos fines secundarios, desde este momento usted nos puede comunicar lo anterior a través del siguiente mecanismo:enviando un correo electrónico a computo@ite.edu.mx\nLa negativa para el uso de sus datos personales para estas finalidades no podrá ser un motivo para que le neguemos los servicios y productos que solicita o contrata con nosotros.\n\n'),
                        TextSpan(
                            text:
                                '¿Qué datos personales utilizaremos para estos fines?\n\n',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                'Para llevar a cabo las finalidades descritas en el presente aviso de privacidad, utilizaremos los siguientes datos personales:\n\n'),
                        TextSpan(
                            text:
                                '•Nombre\n•Estado Civil\n•Registro Federal de Contribuyentes(RFC)\n•Clave única de Registro de Población (CURP)\n•Lugar de nacimiento\n•Fecha de nacimiento\n•Nacionalidad\n•Domicilio\n•Teléfono particular\n•Teléfono celular\n•Correo electrónico\n•Edad\n•Fotografía\n•Señas particulares\n•Tipo de sangre\n•Puesto o cargo que desempeña\n•Domicilio de trabajo\n•Correo electrónico institucional\n•Teléfono institucional\n•Referencias laborales\n•Información generada durante los procesos de reclutamiento, selección y contratación\n•Capacitación laboral\n•Trayectoria educativa\n•Títulos\n•Cédula profesional\n•Certificados\n•Reconocimientos\n•Datos de identificación\n•Datos de contacto\n•Datos académicos\n\n'),
                        TextSpan(
                            text:
                                'Además de los datos personales mencionados anteriormente, para las finalidades informadas en el presente aviso de privacidad utilizaremos los siguientes datos personales considerados como sensibles, que requieren de especial protección:\n\n•Datos de salud\n\n'),
                        TextSpan(
                            text:
                                '¿Con quién compartimos su información personal y para qué fines?\n\n',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                'Le informamos que sus datos personales son compartidos dentro del país con las siguientes personas, empresas, organizaciones o autoridades distintas a nosotros, para los siguientes fines:\n\n'),
                      ])),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RichText(
                        text: const TextSpan(
                      text: 'Destinatario de los\n datos personales',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
                    RichText(
                        text: const TextSpan(
                      text: '	Finalidad',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
                    RichText(
                        text: const TextSpan(
                      text: '	Requiere del\n consentimiento',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RichText(
                        text: const TextSpan(
                      text:
                          'Dirección General del \nTecnológico \nNacional de México',
                      style: TextStyle(color: Colors.black),
                    )),
                    RichText(
                        text: const TextSpan(
                      text:
                          'Seguimiento \nescolar,\n seguimiento \nde egresados \ny contratación\n del personal',
                      style: TextStyle(color: Colors.black),
                    )),
                    const SizedBox(
                      width: 15,
                    ),
                    RichText(
                        text: const TextSpan(
                      text: 'No',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
                  ],
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
