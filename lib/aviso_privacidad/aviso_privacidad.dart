import 'package:app_informativa_ite/const/datosperso.dart';
import 'package:app_informativa_ite/const/fonts.dart';
import 'package:app_informativa_ite/const/nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_informativa_ite/widgets/paragraphs.dart';


class Privacy extends StatelessWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Paragraphs t = Paragraphs();
    MediaQueryData queryData = MediaQuery.of(context);
    double heightSpace = queryData.size.height / 10;
    double widthSpace = queryData.size.width / 20;
    return CupertinoPageScaffold(
      navigationBar: navBar('Aviso de Privacidad'),
      child: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Container(
               margin: EdgeInsets.only(
            top: heightSpace / 2,
            bottom: heightSpace / 2,
            left: widthSpace / 2,
            right: widthSpace / 2,
          ),
            
           
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children:<Widget> [
                t.title('AVISO DE PRIVACIDAD'),
                t.paragraph('INSTITUTO TECNOLOGICO DE ENSENADA, mejor conocido como ITE, con domicilio en calle BLVD TECNOLOGICO 150, colonia EX EJIDO CHAPULTEPEC, ciudad ENSENADA, municipio o delegación ENSENADA, cp. 22780, en la entidad de BAJA CALIFORNIA, país MEXICO, y portal de internet www.ensenada.tecnm.mx/sii, gestion.ensenada.tecnm.mx, es el responsable del uso y protección de sus datos personales, y al respecto le informamos lo siguiente:',textAlign: TextAlign.justify),
                t.subtitle('¿Para qué fines utilizaremos sus datos personales?'),
                const SizedBox(
                height: 5,
              ),
                t.paragraph('Los datos personales que recabamos de usted, los utilizaremos para las siguientes finalidades que son necesarias para el servicio que solicita:',textAlign: TextAlign.justify),

                t.listItemDescription(icon: const Icon(Icons.keyboard_arrow_right, color: Colors.black,), itemDescription: 'Para la inscripción del alumno en el sistema escolar'),
                t.listItemDescription(icon: const Icon(Icons.keyboard_arrow_right, color: Colors.black,), itemDescription: 'Peclutamiento, contratación y selección del personal'),

                t.paragraph('De manera adicional, utilizaremos su información personal para las siguientes finalidades secundarias que no son necesarias para el servicio solicitado, pero que nos permiten y facilitan brindarle una mejor atención:',textAlign: TextAlign.justify),
                
                t.listItemDescription(icon: const Icon(Icons.keyboard_arrow_right, color: Colors.black,), itemDescription:'Para creación, análisis, estudio, conservación y actualización del expediente del estudiante durante su carrera escolar así como seguimiento de egresado.\n'),
                t.paragraph('En caso de que no desee que sus datos personales sean tratados para estos fines secundarios, desde este momento usted nos puede comunicar lo anterior a través del siguiente mecanismo:',textAlign: TextAlign.justify),
                t.paragraph('enviando un correo electrónico a computo@ite.edu.mxLa negativa para el uso de sus datos personales para estas finalidades no podrá ser un motivo para que le neguemos los servicios y productos que solicita o contrata con nosotros.',textAlign: TextAlign.justify),
                t.subtitle('¿Qué datos personales utilizaremos para estos fines?'),
                const SizedBox(
                height: 5,
              ),
                t.paragraph('Para llevar a cabo las finalidades descritas en el presente aviso de privacidad, utilizaremos los siguientes datos personales:\n',textAlign: TextAlign.justify),
                /*list builder que no pude hacer por que soy noob**/
                
                     
                      Expanded(
                        child: Container(
                      
                        height: double.infinity,
                        child: ListView.builder(

                      
                        itemCount: datos.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index){
                          String key = datos.keys.elementAt(index);
                        return Column(
                          children:<Widget> [
                              ListTile(
                                title: Expanded(child: Text(key)),
                                subtitle: Expanded(child: Text("${datos[key]}")),
                              )
                          ],
                        );
                      }
                      ),
                      )
                      ),
                            
                             
              
              
                
                    
                    
                       
                

                
                
              

                  
                
                t.paragraph('Además de los datos personales mencionados anteriormente, para las finalidades informadas en el presente aviso de privacidad utilizaremos los siguientes datos personales considerados como sensibles, que requieren de especial protección:',textAlign: TextAlign.justify),
                 t.listItemDescription(icon: const Icon(Icons.keyboard_arrow_right, color: Colors.black,), itemDescription:'Datos de salud',),
               
                t.subtitle('¿Con quién compartimos su información personal y para qué fines?'),
                const SizedBox(
                height: 5,
              ),
                t.paragraph("Le informamos que sus datos personales son compartidos dentro del país con las siguientes personas, empresas, organizaciones o autoridades distintas a nosotros, para los siguientes fines:",textAlign: TextAlign.justify),



                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RichText(
                          text: TextSpan(
                        text: 'Destinatario de los\n datos personales',
                        style: textStyleMonserrat(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      )),
                      RichText(
                          text: TextSpan(
                        text: '	Finalidad',
                        style: textStyleMonserrat(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                      RichText(
                          text: TextSpan(
                        text: '	Requiere del\n consentimiento',
                        style: textStyleMonserrat(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RichText(
                          text:  TextSpan(
                        text:
                            'Dirección General\n del Tecnológico \nNacional de \nMéxico',
                        style: textStyleMonserrat(
                            color: Colors.black),
                      )),
                      RichText(
                          text: TextSpan(
                        text:
                            'Seguimiento \nescolar,\n seguimiento \nde egresados \ny contratación\n del personal',
                        style: textStyleMonserrat(
                            color: Colors.black)
                      )),
                      const SizedBox(
                        width: 15,
                      ),
                      RichText(
                          text:  TextSpan(
                        text: 'No',
                        style: textStyleMonserrat(
                            color: Colors.black),
                      )),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RichText(
                          text:  TextSpan(
                        text: 'Dirección \nGeneral\n del Personal',
                        style: textStyleMonserrat(
                            color: Colors.black),
                      )),
                      RichText(
                          text:  TextSpan(
                        text: '	Contratación del\n personal',
                        style: textStyleMonserrat(
                            color: Colors.black),
                      )),
                      const SizedBox(
                        width: 15,
                      ),
                      RichText(
                          text:  TextSpan(
                        text: 'No',
                        style: textStyleMonserrat(
                            color: Colors.black),
                      )),
                    ],
                  )
                ]),
                const SizedBox(height: 15),
                t.paragraph('Con relación a las transferencias que requieren su consentimiento, si usted después de leer este aviso de privacidad no manifiesta su negativa para que las mismas se lleven a cabo, entenderemos que nos lo ha otorgado. Ponemos a su disposición el siguiente mecanismo para que, en su caso, nos pueda comunicar su negativa para que dichas transferencias se realicen:enviando un correo electrónico a computo@ite.edu.mx\n',textAlign: TextAlign.justify),
                t.subtitle('¿Cómo puede acceder, rectificar o cancelar sus datos personales, u oponerse a su uso?'),
                const SizedBox(
                height: 5,
              ),
                t.paragraph('Usted tiene derecho a conocer qué datos personales tenemos de usted, para qué los utilizamos y las condiciones del uso que les damos (Acceso). Asimismo, es su derecho solicitar la corrección de su información personal en caso de que esté desactualizada, sea inexacta o incompleta (Rectificación); que la eliminemos de nuestros registros o bases de datos cuando considere que la misma no está siendo utilizada adecuadamente (Cancelación); así como oponerse al uso de sus datos personales para fines específicos (Oposición). Estos derechos se conocen como derechos ARCO.Para el ejercicio de cualquiera de los derechos ARCO, usted deberá presentar la solicitud respectiva a través del siguiente medio:enviando un correo electrónico a computo@ite.edu.mx',textAlign: TextAlign.justify),
 const SizedBox(
                height: 10,
              ),
                t.paragraph('Para conocer el procedimiento y requisitos para el ejercicio de los derechos ARCO, ponemos a su disposición el siguiente medio:En el caso de los estudiantes, lo podrán hacer mediante el acceso al Sistema Integral de Información (SII), mientras que en el caso del personal, lo deberán solicitar directamente al Departamento de Recursos Humanos.',textAlign: TextAlign.justify),
               const SizedBox(
                height: 10,
              ),
              t.paragraph('Los datos de contacto de la persona o departamento de datos personales, que está a cargo de dar trámite a las solicitudes de derechos ARCO, son los siguientes:',textAlign: TextAlign.justify),
              t.listItemDescription(number: 1, itemName: 'Nombre de la persona o departamento de datos personales: ',itemDescription: 'Jefe del Centro de Cómputo'),
              t.listItemDescription(number: 2,itemName: 'Domicilio:', itemDescription: ' calle Blvd Tecnológico 150, colonia Ex Ejido Chapultepec, ciudad Ensenada, municipio o delegación Ensenada, c.p. 22780, en la entidad de Baja California, país México, Usted puede revocar su consentimiento para el uso de sus datos personales. Usted puede revocar el consentimiento que, en su caso, nos haya otorgado para el tratamiento de sus datos personales. Sin embargo, es importante que tenga en cuenta que no en todos los casos podremos atender su solicitud o concluir el uso de forma inmediata, ya que es posible que por alguna obligación legal requiramos seguir tratando sus datos personales.  Asimismo, usted deberá considerar que para ciertos fines, la revocación de su consentimiento implicará que no le podamos seguir prestando el servicio que nos solicitó, o la conclusión de su relación con nosotros.Para revocar su consentimiento deberá presentar su solicitud a través del siguiente medio:enviando un correo electrónico a computo@ite.edu.mx Con relación al procedimiento y requisitos para la revocación de su consentimiento, le informamos lo siguiente:a) ¿A través de qué medios pueden acreditar su identidad el titular y, en su caso, su representante, así como la personalidad este último? correo electrónico institucionalb) ¿Qué información y/o documentación deberá contener la solicitud? debe indicar en asunto REVOCACIÓN DE CONSENTIMIENTO y el mensaje deberá indicar su número de control, nombre completo así con el texto “deseo revocar mi consentimiento para trasladar mis datos personales”'),
              t.listItemDescription(number: 3, itemDescription: '¿En cuántos días le daremos respuesta a su solicitud? días hábilesd) ¿Por qué medio le comunicaremos la respuesta a su solicitud? correo electrónico institucional'),
              t.subtitle('¿Cómo puede limitar el uso o divulgación de su información personal?'),
              const SizedBox(
                height: 5,
              ),
              t.paragraph('Con objeto de que usted pueda limitar el uso y divulgación de su información personal, le ofrecemos los siguientes medios:enviando un correo electrónico a computo@ite.edu.mx en donde el asunto debe decir ARCO y en el cuerpo del mensaje expresar que limita el uso de sus datos personales. Éste correo deberá ser enviado sólo desde el correo institucional',textAlign: TextAlign.justify),
              t.subtitle('¿Cómo puede conocer los cambios en este aviso de privacidad?'),
                 const SizedBox(
                height: 5,
              ),
              t.paragraph('El presente aviso de privacidad puede sufrir modificaciones, cambios o actualizaciones derivadas de nuevos requerimientos legales; de nuestras propias necesidades por los productos o servicios que ofrecemos; de nuestras prácticas de privacidad; de cambios en nuestro modelo de negocio, o por otras causas.Nos comprometemos a mantenerlo informado sobre los cambios que pueda sufrir el presente aviso de privacidad, a través de: página web de la institución',textAlign: TextAlign.justify),

              t.paragraph('El procedimiento a través del cual se llevarán a cabo las notificaciones sobre cambios o actualizaciones al presente aviso de privacidad es el siguiente:',textAlign: TextAlign.justify),
              t.paragraph('Dentro del menú “Nosotros” en la página principal del ITE en www.ensenada.tecnm.mx'),
              const SizedBox(height: 20,),

              t.paragraph('Última actualización: 02/07/2018')
              ],
            ),
          ),
        ),
      ),
    );
  }
}