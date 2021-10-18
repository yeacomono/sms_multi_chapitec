import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multi_sms_app_chapitec/src/Widgets/BotonGeneral.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:multi_sms_app_chapitec/src/Widgets/Input-global-desing.dart';

class InitialView extends StatefulWidget {
  static const String name = "InitialView";
  const InitialView({Key? key}) : super(key: key);

  @override
  _InitialViewState createState() => _InitialViewState();
}

class _InitialViewState extends State<InitialView> {
  static const platform = MethodChannel('send.sms.flutter.event');
  @override
  void initState() {
    requesPermissionSMS();
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width :  double.infinity,
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BotonGeneral(
              width: 200,
              event: (){
                sendSMS();
              }, 
              color: Colors.red, 
              addIcon: false
            ),
            const InputGlobalDesing(width: 200,),
          ],
        ),
      ),
    );
  }
  Future<void> sendSMS()async{
    print("init method");
    try {
      await platform.invokeMethod("sendSMSText");
    } on PlatformException catch (e) {
      print("${e.message} cde");
    }
  }

 requesPermissionSMS()async{
  /*// var status = await Permission.sms.status;
  // if(status.isDenied){
     print("is Denegado");
   }*/
 }

}