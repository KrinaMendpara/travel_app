import 'package:flutter/material.dart';

class TabIndicators extends StatelessWidget {

  const TabIndicators({
    required int numTabs,
    required int activeIdx,
    required Color activeColor,
    required double padding,
    required double height,
    Color inactiveColor = const Color(0x00FFFFFF),
    super.key, }) :
        _numTabs = numTabs,
        _activeIdx = activeIdx,
        _activeColor = activeColor,
        _inactiveColor = inactiveColor,
        _padding = padding,
        _height = height;
  final int _numTabs;
  final int _activeIdx;
  final Color _activeColor;
  final Color _inactiveColor;
  final double _padding;
  final double _height;

  @override
  Widget build(BuildContext context) {

    final elements = <Widget>[];

    for(var i = 0; i < _numTabs; ++i) {
      elements.add(
          Expanded(child:
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _padding),
              child: Container(color: i == _activeIdx ? _activeColor : _inactiveColor),
            ),
          ),
      );
    }

    return
      SizedBox(
        height: _height,
        child: Row(
          children: elements,
        ),
      );
  }
}




// class CustomTabIndicator extends Decoration {
//   final double radius;
//   final Color color;
//   final double indicatorHeight;
//
//   const CustomTabIndicator({
//     this.radius = 3,
//     this.indicatorHeight = 5,
//     this.color = Colors.deepPurpleAccent
//     // this.color = Color.fromRGBO(185, 177, 255, 1),
//   });
//   @override
//   _CustomPainter createBoxPainter([VoidCallback? onChanged]) {
//     return _CustomPainter(
//       this,
//       onChanged,
//       radius,
//       color,
//       indicatorHeight
//     );
//   }
// }
//
// class _CustomPainter extends BoxPainter {
//   final CustomTabIndicator decoration;
//   final double radius;
//   final Color color;
//   final double indicatorHeight;
//
//   _CustomPainter(
//       this.decoration,
//       VoidCallback? onChange,
//       this.radius,
//       this.color,
//       this.indicatorHeight,
//       ) : super(onChange);
//
//   @override
//   void paint (Canvas canvas, Offset offset, ImageConfiguration configuration) {
//     // assert(configuration.size != null);
//
//     final Paint paint = Paint();
//     double xAxisPos = offset.dx + configuration.size!.width / 2;
//     double yAxisPos = offset.dy + configuration.size!.height - indicatorHeight;
//     paint.color = color;
//     print(offset.dx);
//     print('****${offset.dy}');
//     print(configuration.size!.width);
//     print(configuration.size!.height);
//     print(xAxisPos);
//     print(yAxisPos);
//
//     RRect fullRect = RRect.fromRectAndCorners(
//       Rect.fromCenter(
//         center: Offset(xAxisPos, yAxisPos),
//         width: configuration.size!.width / 1.5,
//         height: indicatorHeight,
//       ),
//       topLeft: Radius.circular(radius),
//       topRight: Radius.circular(radius),
//     );
//     print('-------');
//     print(Offset(xAxisPos, yAxisPos));
//     print(configuration.size!.width / 1.5);
//     print(Radius.circular(radius));
//     print(Radius.circular(radius));
//     canvas.drawRRect(fullRect, paint);
//   }
// }