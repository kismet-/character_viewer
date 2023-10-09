// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Color extends Color {
  @override
  final double alpha;
  @override
  final double red;
  @override
  final double green;
  @override
  final double blue;
  int? __alphaByte;
  int? __redByte;
  int? __greenByte;
  int? __blueByte;

  factory _$Color([void Function(ColorBuilder)? updates]) =>
      (new ColorBuilder()..update(updates))._build();

  _$Color._(
      {required this.alpha,
      required this.red,
      required this.green,
      required this.blue})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(alpha, r'Color', 'alpha');
    BuiltValueNullFieldError.checkNotNull(red, r'Color', 'red');
    BuiltValueNullFieldError.checkNotNull(green, r'Color', 'green');
    BuiltValueNullFieldError.checkNotNull(blue, r'Color', 'blue');
  }

  @override
  int get alphaByte => __alphaByte ??= super.alphaByte;

  @override
  int get redByte => __redByte ??= super.redByte;

  @override
  int get greenByte => __greenByte ??= super.greenByte;

  @override
  int get blueByte => __blueByte ??= super.blueByte;

  @override
  Color rebuild(void Function(ColorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ColorBuilder toBuilder() => new ColorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Color &&
        alpha == other.alpha &&
        red == other.red &&
        green == other.green &&
        blue == other.blue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alpha.hashCode);
    _$hash = $jc(_$hash, red.hashCode);
    _$hash = $jc(_$hash, green.hashCode);
    _$hash = $jc(_$hash, blue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Color')
          ..add('alpha', alpha)
          ..add('red', red)
          ..add('green', green)
          ..add('blue', blue))
        .toString();
  }
}

class ColorBuilder implements Builder<Color, ColorBuilder> {
  _$Color? _$v;

  double? _alpha;
  double? get alpha => _$this._alpha;
  set alpha(double? alpha) => _$this._alpha = alpha;

  double? _red;
  double? get red => _$this._red;
  set red(double? red) => _$this._red = red;

  double? _green;
  double? get green => _$this._green;
  set green(double? green) => _$this._green = green;

  double? _blue;
  double? get blue => _$this._blue;
  set blue(double? blue) => _$this._blue = blue;

  ColorBuilder();

  ColorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alpha = $v.alpha;
      _red = $v.red;
      _green = $v.green;
      _blue = $v.blue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Color other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Color;
  }

  @override
  void update(void Function(ColorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Color build() => _build();

  _$Color _build() {
    final _$result = _$v ??
        new _$Color._(
            alpha:
                BuiltValueNullFieldError.checkNotNull(alpha, r'Color', 'alpha'),
            red: BuiltValueNullFieldError.checkNotNull(red, r'Color', 'red'),
            green:
                BuiltValueNullFieldError.checkNotNull(green, r'Color', 'green'),
            blue:
                BuiltValueNullFieldError.checkNotNull(blue, r'Color', 'blue'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
