import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/constants.dart';
import 'custom_text.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.function,
    this.color,
  }) : super(key: key);

  final FontAwesomeIcons icon;
  final Color? color;
  final Function function;

  @override
  _CustomIconButtonState createState() => _CustomIconButtonState();
}

// Padding(
//   padding: EdgeInsets.zero,
//   child: IconButton(
//     iconSize: 20,
//     onPressed: () async {
//       await launchUrl(
//         Uri.parse(
//             'https://www.facebook.com/amestec.fest'),
//         webOnlyWindowName: '_blank',
//       );
//     },
//     icon: FaIcon(
//       FontAwesomeIcons.facebook,
//       color: Colors.black,
//     ),
//   ),
// ),

class _CustomIconButtonState extends State<CustomIconButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Container(
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: _isHovered ? buttonHoverBgColor : buttonBgColor,
          border: Border.all(
            color: _isHovered ? buttonHoverBorderColor : buttonBorderColor,
            width: buttonBorderTick,
          ),
          borderRadius: BorderRadius.circular(buttonBorderRadius),
        ),
        child: IconButton(
          iconSize: buttonIconSize,
          onPressed: () {
            widget.function();
          },
          icon: FaIcon(
            widget.icon as IconData?,
            color: _isHovered ? buttonHoverTextColor : buttonTextColor,
          ),
        ),
      ),
    );
  }
}
