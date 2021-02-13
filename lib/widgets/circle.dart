import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final double size;
  final List<Color> colors;

  const Circle({Key key, @required this.size, @required this.colors})
      : assert(size != null && size > 0),
        assert(colors != null && colors.length >= 2),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: this.colors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
        shape: BoxShape.circle,
      ),
      width: this.size,
      height: this.size,
    );
  }
}
