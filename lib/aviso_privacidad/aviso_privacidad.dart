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
                      style: TextStyle(color: Colors.black),
                    )),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RichText(
                        text: const TextSpan(
                      text: 'Dirección General\n del Personal',
                      style: TextStyle(color: Colors.black),
                    )),
                    RichText(
                        text: const TextSpan(
                      text: '	Contratación del\n personal',
                      style: TextStyle(color: Colors.black),
                    )),
                    const SizedBox(
                      width: 15,
                    ),
                    RichText(
                        text: const TextSpan(
                      text: 'No',
                      style: TextStyle(color: Colors.black),
                    )),
                  ],
                )
              ]),
              const SizedBox(height: 15),
              RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                      text:
                          'Con relación a las transferencias que requieren su consentimiento, si usted después de leer este aviso de privacidad no manifiesta su negativa para que las mismas se lleven a cabo, entenderemos que nos lo ha otorgado. Ponemos a su disposición el siguiente mecanismo para que, en su caso, nos pueda comunicar su negativa para que dichas transferencias se realicen:enviando un correo electrónico a computo@ite.edu.mx\n\n\n',
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                            text:
                                '¿Cómo puede acceder, rectificar o cancelar sus datos personales, u oponerse a su uso?\n\n',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                'Usted tiene derecho a conocer qué datos personales tenemos de usted, para qué los utilizamos y las condiciones del uso que les damos (Acceso). Asimismo, es su derecho solicitar la corrección de su información personal en caso de que esté desactualizada, sea inexacta o incompleta (Rectificación); que la eliminemos de nuestros registros o bases de datos cuando considere que la misma no está siendo utilizada adecuadamente (Cancelación); así como oponerse al uso de sus datos personales para fines específicos (Oposición). Estos derechos se conocen como derechos ARCO.\nPara el ejercicio de cualquiera de los derechos ARCO, usted deberá presentar la solicitud respectiva a través del siguiente medio:enviando un correo electrónico a computo@ite.edu.mx\n\nPara conocer el procedimiento y requisitos para el ejercicio de los derechos ARCO, ponemos a su disposición el siguiente medio:En el caso de los estudiantes, lo podrán hacer mediante el acceso al Sistema Integral de Información (SII), mientras que en el caso del personal, lo deberán solicitar directamente al Departamento de Recursos Humanos.\n\nLos datos de contacto de la persona o departamento de datos personales, que está a cargo de dar trámite a las solicitudes de derechos ARCO, son los siguientes:\na) Nombre de la persona o departamento de datos personales: Jefe del Centro de Cómputo\nb) Domicilio: calle Blvd Tecnológico 150, colonia Ex Ejido Chapultepec, ciudad Ensenada, municipio o delegación Ensenada, c.p. 22780, en la entidad de Baja California, país México,'),
                        TextSpan(
                            text:
                                ' Usted puede revocar su consentimiento para el uso de sus datos personales.',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                '\n\nUsted puede revocar el consentimiento que, en su caso, nos haya otorgado para el tratamiento de sus datos personales. Sin embargo, es importante que tenga en cuenta que no en todos los casos podremos atender su solicitud o concluir el uso de forma inmediata, ya que es posible que por alguna obligación legal requiramos seguir tratando sus datos personales.  Asimismo, usted deberá considerar que para ciertos fines, la revocación de su consentimiento implicará que no le podamos seguir prestando el servicio que nos solicitó, o la conclusión de su relación con nosotros.Para revocar su consentimiento deberá presentar su solicitud a través del siguiente medio:enviando un correo electrónico a computo@ite.edu.mx\nCon relación al procedimiento y requisitos para la revocación de su consentimiento, le informamos lo siguiente:a) ¿A través de qué medios pueden acreditar su identidad el titular y, en su caso, su representante, así como la personalidad este último?\ncorreo electrónico institucional b) ¿Qué información y/o documentación deberá contener la solicitud?\ndebe indicar en asunto REVOCACIÓN DE CONSENTIMIENTO y el mensaje deberá indicar su número de control, nombre completo así con el texto “deseo revocar mi consentimiento para trasladar mis datos personales”. c) ¿En cuántos días le daremos respuesta a su solicitud?\ndos días hábiles d) ¿Por qué medio le comunicaremos la respuesta a su solicitud? correo electrónico institucional\n\n'),
                        TextSpan(
                            text:
                                '¿Cómo puede limitar el uso o divulgación de su información personal?\n',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                'Con objeto de que usted pueda limitar el uso y divulgación de su información personal, le ofrecemos los siguientes medios:enviando un correo electrónico a computo@ite.edu.mx en donde el asunto debe decir ARCO y en el cuerpo del mensaje expresar que limita el uso de sus datos personales. Éste correo deberá ser enviado sólo desde el correo institucional'),
                        TextSpan(
                            text:
                                '\n\n¿Cómo puede conocer los cambios en este aviso de privacidad?\n',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                'El presente aviso de privacidad puede sufrir modificaciones, cambios o actualizaciones derivadas de nuevos requerimientos legales; de nuestras propias necesidades por los productos o servicios que ofrecemos; de nuestras prácticas de privacidad; de cambios en nuestro modelo de negocio, o por otras causas.Nos comprometemos a mantenerlo informado sobre los cambios que pueda sufrir el presente aviso de privacidad, a través de: página web de la institución.\n\nEl procedimiento a través del cual se llevarán a cabo las notificaciones sobre cambios o actualizaciones al presente aviso de privacidad es el siguiente:\n\nDentro del menú “Nosotros” en la página principal del ITE en www.ensenada.tecnm.mx\n\nÚltima actualización: 02/07/2018')
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}
