// ignore_for_file: file_names

import 'package:multi_sms_app_chapitec/src/Styles/DesingTexts.dart';

import 'package:multi_sms_app_chapitec/src/Styles/Flush.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertSucces {
  showDialogGeneral(context,
      {required Function() eventAgree, Widget? titleDialgo, Widget? body}) {
    final size = MediaQuery.of(context).size;
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              width: size.width * 0.8,
              height: 300,
              child: Column(
                children: [
                  headerDialog(titleDialgo),
                  Expanded(child: bodyDialog(body)),
                  bottomDialog(context, eventAgree),
              ],
            ),
          ),
        );
      }
    );
  }
  
}

bodyDialog(Widget? body) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),

    alignment: Alignment.center,
    child: body,
  );
}

headerDialog(Widget? titleDialgo) {
  return Container(
    child: titleDialgo,
  );
}

Row bottomDialog(context, Function() eventAgree) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      botonClose(context),
      botonAgree(eventAgree),
    ],
  );
}

botonClose(context) {
  return Container(
    decoration: BoxDecoration(
        color: Flush.rosado, borderRadius: BorderRadius.circular(10)),
    width: 60,
    height: 60,
    child: Center(
      child: IconButton(
        onPressed: () {
           print('Dialog Cerrado...');
           Navigator.pop(context);
        },
        icon: const Icon(
          Icons.close,
          //size: 30,
          color: Colors.white,
        ),
      ),
    ),
  );
}

botonAgree(Function() eventAgree) {
  return InkWell(
    splashColor: Colors.black,
    onTap: eventAgree,
    child: Container(
      decoration: BoxDecoration(
          color: Flush.colorGlobal, borderRadius: BorderRadius.circular(10)),
      width: 150,
      height: 60,
      child: Center(
        child: Text('ACEPTAR',style: DesingText.sansBoldText(null, Colors.white),),
      ),
    ),
  );
}
