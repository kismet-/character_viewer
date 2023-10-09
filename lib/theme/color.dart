import 'package:built_value/built_value.dart';

part 'color.g.dart';

abstract class Color implements Built<Color, ColorBuilder> {
  double get alpha;

  double get red;

  double get green;

  double get blue;

  @memoized
  int get alphaByte => _toByte(alpha);

  @memoized
  int get redByte => _toByte(red);

  @memoized
  int get greenByte => _toByte(green);

  @memoized
  int get blueByte => _toByte(blue);

  factory Color.fromArgb(
      {required double a,
      required double r,
      required double g,
      required double b}) {
    return Color((builder) => builder
      ..alpha = a ?? 1.0
      ..red = r ?? 0.0
      ..green = g ?? 0.0
      ..blue = b ?? 0.0);
  }

  factory Color.fromArgbBytes(
      {required int a, required int r, required int g, required int b}) {
    return Color((builder) => builder
      ..alpha = _toUnit(a ?? 0)
      ..red = _toUnit(r ?? 0)
      ..green = _toUnit(g ?? 0)
      ..blue = _toUnit(b ?? 0));
  }

  int toArgbBytes() =>
      (alphaByte << 24) | (redByte << 16) | (greenByte << 8) | (blueByte);

  Color._();
  factory Color([updates(ColorBuilder b)]) = _$Color;
}

int _toByte(double value) => (value * 255).round().clamp(0, 255);

double _toUnit(int byte) => (byte / 255).clamp(0.0, 1.0);
