import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/avion.dart';

class DetailScreen extends StatelessWidget {
  final Avion avion;

  const DetailScreen({Key? key, required this.avion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Descripcion del Avion'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Modelo: ${avion.modelo}', style: fromTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              Text('Color: ${avion.color}', style: subjectTextStyle),
              const SizedBox(height: 5.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              Text('Matricula: ${avion.matricula}', style: bodyTextStyle),
            ],
          ),
        ));
  }
}
