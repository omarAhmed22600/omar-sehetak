import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class showSos extends StatefulWidget {
  const showSos({Key key}) : super(key: key);

  @override
  State<showSos> createState() => _showSosState();
}

class _showSosState extends State<showSos> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 0),
      body: Container(

        child: CupertinoAlertDialog(
          title: Text("SOS"),
          content: Text("are you sure make emergency call?"),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              child: Text('Yes'),
              onPressed: () {
                FlutterPhoneDirectCaller.callNumber("+201027860531");
                },
            ),
            CupertinoDialogAction(
              isDefaultAction: true,
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            )
          ],
        ),
      ),
    );
  }
}
