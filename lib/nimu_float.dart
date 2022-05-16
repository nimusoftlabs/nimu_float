import 'package:flutter/material.dart';

import 'alignment/alignment.dart';

class NimuFloat extends StatefulWidget {
  const NimuFloat(
      {Key? key,
      this.child,
      this.horizontalPosition,
      this.verticalPosition,
      this.blurnessColor,
      this.showBlurness = false,
      this.body})
      : super(key: key);

  ///child of  type [Widget] which floats across the body based on horizontal and vertical position
  final Widget? child;

  ///body of type [Widget] which is same as Scaffold's body
  final Widget? body;

  /// horizontalPosition of type [double] which  aligns the child horizontally across the body
  final double? horizontalPosition;

  /// verticalPosition of type [double] which  aligns the child vertically across the body
  final double? verticalPosition;

  final Color? blurnessColor;

  final bool showBlurness;

  @override
  _NimuFloatState createState() => _NimuFloatState();
}

class _NimuFloatState extends State<NimuFloat> {
  Widget? child;

  @override
  void initState() {
    child = widget.child;
    super.initState();
  }

  @override
  void didUpdateWidget(NimuFloat oldWidget) {
    child = widget.child;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) => Stack(
        alignment: Alignment.center,
        fit: StackFit.loose,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: widget.body ?? Container(),
          ),
          Positioned(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: widget.showBlurness
                  ? widget.blurnessColor ?? Colors.black54
                  : null,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: widget.verticalPosition ?? 0.0,
                    left: widget.horizontalPosition ?? 0.0,
                    child: widget.child ?? Container(),
                  )
                ],
              ),
            ),
          )
        ],
      );
}

class CounterChild extends StatefulWidget {
  /// Create badges of all types, check out [GFBadge] for button badges and [GFIconBadge] for icon badges.
  const CounterChild(
      {Key? key,
      this.padding = const EdgeInsets.symmetric(horizontal: 8),
      required this.child,
      required this.counterChild,
      this.position})
      : super(key: key);

  /// child of type [Widget] is used to show icon.
  /// Use [GFIconButton] widget for compatibility.
  final Widget child;

  /// widget of type [Widget] is used to show counter to the top right corner of child.
  /// You can use [GFBadge] for compatibility.
  final Widget counterChild;

  /// The internal padding for the badge's [child].
  final EdgeInsetsGeometry padding;

  /// defines the position of [GFBadge].
  final CounterAlignment? position;

  @override
  _CounterChildState createState() => _CounterChildState();
}

class _CounterChildState extends State<CounterChild> {
  @override
  Widget build(BuildContext context) => Container(
      padding: widget.padding,
      child: Stack(
        fit: StackFit.loose,
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          widget.child,
          widget.position == null
              ? PositionedDirectional(
                  top: CounterAlignment.topEnd().top,
                  end: CounterAlignment.topEnd().end,
                  child: widget.counterChild,
                )
              : PositionedDirectional(
                  top: widget.position!.top,
                  end: widget.position!.end,
                  bottom: widget.position!.bottom,
                  start: widget.position!.start,
                  child: widget.counterChild,
                )
        ],
      ));
}

class NimuCounter extends StatelessWidget {
  const NimuCounter({
    Key? key,
    required this.height,
    required this.width,
    required this.backgroundColor,
    required this.count,
    required this.countStyle,
  }) : super(key: key);
  final double height;
  final double width;
  final Color backgroundColor;
  final String count;
  final TextStyle countStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          count,
          style: countStyle,
        ),
      ),
    );
  }
}
