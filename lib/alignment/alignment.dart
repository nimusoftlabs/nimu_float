
/// [CounterAlignment] is used to position the badges to top start, top bottom,
/// bottom start or bottom end of the icon button
/// See GFIconBadge
class CounterAlignment {
  const CounterAlignment({this.top, this.end, this.bottom, this.start});

  factory CounterAlignment.topStart({double top = -5, double start = -10}) =>
      CounterAlignment(top: top, start: start);

  factory CounterAlignment.topEnd({double top = -8, double end = -10}) =>
      CounterAlignment(top: top, end: end);

  factory CounterAlignment.bottomEnd({double bottom = -8, double end = -10}) =>
      CounterAlignment(bottom: bottom, end: end);

  factory CounterAlignment.bottomStart(
          {double bottom = -8, double start = -10}) =>
      CounterAlignment(bottom: bottom, start: start);

  /// defines the position of badge
  final double? top;

  /// defines the position of badge
  final double? end;

  /// defines the position of badge
  final double? start;

  /// defines the position of badge
  final double? bottom;
}