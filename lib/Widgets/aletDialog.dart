import 'package:flutter/material.dart';

class CustomShowDialog extends StatelessWidget {
  final BuildContext context;
  final String raisedText;
  final String alertTitle;
  final String alertContent;
  final String flatText;

  const CustomShowDialog({
    Key key,
    this.context,
    this.raisedText,
    this.alertTitle,
    this.alertContent,
    this.flatText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.black,
      title: Text(alertTitle,
        style: TextStyle(
        color: Colors.yellowAccent,
        fontWeight: FontWeight.bold,
      ),
      ),
      content: Text(alertContent,style: TextStyle(color: Colors.white),),
      actions: <Widget>[
        FlatButton(
          child: Text(flatText,style: TextStyle(color: Colors.red),),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}