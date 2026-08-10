import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle textStyle;
  final Function? onPressed;
  final VoidCallback? callBack;

  const RoundedButton({
    super.key,
    required this.btnName,
    this.icon,
    this.bgColor = Colors.blue,
    this.textStyle = const TextStyle( color: Colors.white),
    this.onPressed,
    this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callBack!();
      },
      child: icon != null ? Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                Container(width: 10,),
                Text(btnName, style: textStyle),
              ],
            )
          : Text(btnName, style: textStyle),
      style: ElevatedButton.styleFrom(backgroundColor: bgColor , shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}
