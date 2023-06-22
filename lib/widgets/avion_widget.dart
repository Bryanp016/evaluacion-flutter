import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/avion.dart';


class AvionWidget extends StatelessWidget {
  final Avion avion;
  final Function onTap;
  final Function onSwipe;
  final Function onLongPress;

  const AvionWidget(
      {Key? key,
      required this.avion,
      required this.onTap,
      required this.onSwipe,
      required this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        onSwipe(avion.id);
      },
      onLongPress: () {
        onLongPress(avion.id);
      },
      onTap: () {
        onTap(avion);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: 80.0,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
                decoration: BoxDecoration(
                    color: avion.read ? Colors.transparent : primaryColor,
                    shape: BoxShape.circle),
              ),
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  
                  Text(avion.matricula, style: fromTextStyle),
                  Text(avion.color, style: subjectTextStyle),
                  Text(avion.modelo, style: subjectTextStyle),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
