import 'package:flutter/material.dart';

class Questions extends StatelessWidget {

  final String questionDetails;

  Questions(this.questionDetails);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        top: 140,
        left: 20,
        right: 20,
        bottom: 10,
      ),
      child: Text(
        questionDetails,
        style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.normal,
          fontSize: 16,
        ),
      ),
    );
  }
}
