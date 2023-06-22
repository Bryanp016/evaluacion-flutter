import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/backend.dart';
import '../model/avion.dart';
import '../widgets/avion_widget.dart';
import 'detail_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  var aviones = Backend().getAvion();

  void markAvionAsRead(int id) {
    Backend().markAvionAsRead(id);
    setState(() {
      aviones = Backend().getAvion();
    });
  }

  void deleteAvion(int id) {
    Backend().deleteAvion(id);
    setState(() {
      aviones = Backend().getAvion();
    });
  }

  void showDetail(Avion avion) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen(avion: avion);
    }));

    Backend().markAvionAsRead(avion.id);
    setState(() {
      aviones = Backend().getAvion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: aviones.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: primaryColor,
          indent: 40.0,
          endIndent: 20.0,
        ),
        itemBuilder: (BuildContext context, int index) => AvionWidget(
          avion: aviones[index],
          onTap: showDetail,
          onLongPress: markAvionAsRead,
          onSwipe: deleteAvion,
        ),
      ),
    );
  }
}
