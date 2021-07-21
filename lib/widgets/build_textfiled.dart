
import 'package:flutter/material.dart';
import '../constants/const.dart';
class BuildTextFiled extends StatelessWidget {
  final String text;
  final IconData icon;
  final double marginV;

  const BuildTextFiled({Key key, this.text, this.icon, this.marginV = 15.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: marginV),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: KTextColor
              )
          )
      ),
      child: TextFormField(
        autofocus: true,
        style: TextStyle(
            color: KTextColor
        ),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: text,
            hintStyle: TextStyle(
                color: KTextColor
            ),
            prefixIcon: Icon(icon,color: KTextColor)
        ),
      ),
    );
  }
}
