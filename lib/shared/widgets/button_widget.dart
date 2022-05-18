import 'package:flutter/material.dart';

import '../shared.dart';

class ButtonWidget extends StatefulWidget {
  final void Function()? onPressed;
  final String? buttonText;
  final ButtonStyle? btnStyle;
  final TextStyle? textStyle;
  final Widget? child;
  final double? height;
  final double? width;

  const ButtonWidget({
    Key? key,
    this.onPressed,
    this.buttonText,
    this.btnStyle,
    this.textStyle,
    this.child,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? MediaQuery.of(context).size.height * 0.06,
      width: widget.width ?? MediaQuery.of(context).size.width,
      child: ElevatedButton(
        key: widget.key,
        onPressed: widget.onPressed,
        child: widget.child ??
            Text(
              widget.buttonText!,
              overflow: TextOverflow.visible,
              style: widget.textStyle ??
                  Theme.of(context).textTheme.bodyTextStyle1,
            ),
        style: widget.btnStyle ?? kPrimaryButtonStyle,
      ),
    );
  }
}
