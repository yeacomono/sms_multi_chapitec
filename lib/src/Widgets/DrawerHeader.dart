// ignore_for_file: file_names
import 'package:multi_sms_app_chapitec/src/Styles/Flush.dart';
import 'package:flutter/material.dart';

class CabezalDrawer extends StatefulWidget {
  const CabezalDrawer({Key? key}) : super(key: key);

  @override
  _CabezalDrawerState createState() => _CabezalDrawerState();
}

class _CabezalDrawerState extends State<CabezalDrawer> {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      margin: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Flush.colorGlobal,
      ),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                padding: const EdgeInsets.only(right: 35.0, bottom: 30.0),
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: Image.asset('assets/images/logo.png'),
            height: 50.0,
          ),
        ],
      ),
    );
  }

  Widget textDrawerHead(String text, double size) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: Colors.white,
      ),
    );
  }
}
