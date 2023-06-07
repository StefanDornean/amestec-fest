import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'custom_text.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.function,
    this.color,
  }) : super(key: key);

  final String text;
  final Color? color;
  final Function function;

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: InkWell(
        onTap: () {
          widget.function();
        },
        child: Container(
          decoration: BoxDecoration(
            color: _isHovered ? buttonHoverBgColor : buttonBgColor,
            border: Border.all(
              color: _isHovered ? buttonHoverBorderColor : buttonBorderColor,
              width: buttonBorderTick,
            ),
            borderRadius: BorderRadius.circular(buttonBorderRadius),
          ),
          child: Padding(
            padding: EdgeInsets.all(buttonPadding),
            child: CustomText(
              text: widget.text,
              color: _isHovered ? buttonHoverTextColor : buttonTextColor,
            ),
          ),
        ),
      ),
    );
  }
}


// class CustomButton extends StatefulWidget {
//   const CustomButton({
//     Key? key,
//     required this.text,
//     required this.function,
//     Color? this.color = textColor,
//   }) : super(key: key);

//   final String text;
//   final Color? color;
//   final Function function;

//   @override
//   Widget build(BuildContext context) {
//     bool _isHovered = false;

//     return MouseRegion(
//       onEnter: (_) => setState(() => _isHovered = true),
//       onExit: (_) => setState(() => _isHovered = false),
//       child: InkWell(
//         onTap: () {
//           function();
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: buttonColor,
//               width: buttonBorderTick,
//             ),
//             borderRadius: BorderRadius.circular(buttonBorderRadius),
//           ),
//           child: Padding(
//               padding: EdgeInsets.all(buttonPadding),
//               child: CustomText(
//                 text: this.text,
//                 color: buttonColor,
//               )),
//         ),
//       ),
//     );
//   }

//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }
