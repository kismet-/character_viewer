import 'package:flutter/painting.dart';

/// Common typography constants to be used across the whole application.
/// This class only exists for easy importing!

class KtfTextStyles {
  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _americanSans = 'AmericanSans';

  static const h1 = TextStyle(
    fontSize: 40.0,
    height: 1.40,
    fontWeight: _medium,
    fontFamily: _americanSans,
  );

  static const h2 = TextStyle(
    fontSize: 32.0,
    height: 1.25,
    fontWeight: _medium,
    fontFamily: _americanSans,
  );

  static const h3 = TextStyle(
    fontSize: 28.0,
    height: 1.43,
    fontWeight: _medium,
    fontFamily: _americanSans,
  );

  static const h4 = TextStyle(
    fontSize: 24.0,
    height: 1.33,
    fontWeight: _medium,
    fontFamily: _americanSans,
  );

  static const h5 = TextStyle(
    fontSize: 20.0,
    height: 1.20,
    fontWeight: _medium,
    fontFamily: _americanSans,
  );

  static const h6 = TextStyle(
    fontSize: 16.0,
    height: 1.25,
    fontWeight: _medium,
    fontFamily: _americanSans,
  );

  static const btn1 = TextStyle(
    fontSize: 16.0,
    height: 1.50,
    fontWeight: _medium,
    fontFamily: _americanSans,
  );

  static const btn1SingleLine = TextStyle(
    fontSize: 16.0,
    height: 1.0,
    fontWeight: _medium,
    fontFamily: _americanSans,
  );

  static const btn2 = TextStyle(
    fontSize: 14.0,
    height: 1.42,
    fontWeight: _medium,
    fontFamily: _americanSans,
  );

  static const btn2SingleLine = TextStyle(
    fontSize: 14.0,
    height: 1.0,
    fontWeight: _medium,
    fontFamily: _americanSans,
  );

  static const b1 = TextStyle(
    fontSize: 20.0,
    height: 1.60,
    fontWeight: _regular,
  );

  static const b1SingleLine = TextStyle(
    fontSize: 20.0,
    height: 1.0,
    fontWeight: _regular,
  );

  static const b2 = TextStyle(
    fontSize: 16.0,
    height: 1.50,
    fontWeight: _regular,
  );

  static const b2SingleLine = TextStyle(
    fontSize: 16.0,
    height: 1.0,
    fontWeight: _regular,
  );

  static const b3 = TextStyle(
    fontSize: 14.0,
    height: 1.43,
    fontWeight: _regular,
  );

  static const b3SingleLine = TextStyle(
    fontSize: 14.0,
    height: 1.0,
    fontWeight: _regular,
  );

  static const c1 = TextStyle(
    fontSize: 12.0,
    height: 1.50,
    letterSpacing: 0.30,
    fontWeight: _regular,
  );
}
