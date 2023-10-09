// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchResult> _$searchResultSerializer =
    new _$SearchResultSerializer();

class _$SearchResultSerializer implements StructuredSerializer<SearchResult> {
  @override
  final Iterable<Type> types = const [SearchResult, _$SearchResult];
  @override
  final String wireName = 'SearchResult';

  @override
  Iterable<Object?> serialize(Serializers serializers, SearchResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'FirstURL',
      serializers.serialize(object.FirstURL,
          specifiedType: const FullType(String)),
      'Icon',
      serializers.serialize(object.Icon, specifiedType: const FullType(String)),
      'Result',
      serializers.serialize(object.Result,
          specifiedType: const FullType(String)),
      'Text',
      serializers.serialize(object.Text, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SearchResult deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'FirstURL':
          result.FirstURL = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'Icon':
          result.Icon = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'Result':
          result.Result = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'Text':
          result.Text = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchResult extends SearchResult {
  @override
  final String FirstURL;
  @override
  final String Icon;
  @override
  final String Result;
  @override
  final String Text;

  factory _$SearchResult([void Function(SearchResultBuilder)? updates]) =>
      (new SearchResultBuilder()..update(updates))._build();

  _$SearchResult._(
      {required this.FirstURL,
      required this.Icon,
      required this.Result,
      required this.Text})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        FirstURL, r'SearchResult', 'FirstURL');
    BuiltValueNullFieldError.checkNotNull(Icon, r'SearchResult', 'Icon');
    BuiltValueNullFieldError.checkNotNull(Result, r'SearchResult', 'Result');
    BuiltValueNullFieldError.checkNotNull(Text, r'SearchResult', 'Text');
  }

  @override
  SearchResult rebuild(void Function(SearchResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchResultBuilder toBuilder() => new SearchResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchResult &&
        FirstURL == other.FirstURL &&
        Icon == other.Icon &&
        Result == other.Result &&
        Text == other.Text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, FirstURL.hashCode);
    _$hash = $jc(_$hash, Icon.hashCode);
    _$hash = $jc(_$hash, Result.hashCode);
    _$hash = $jc(_$hash, Text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchResult')
          ..add('FirstURL', FirstURL)
          ..add('Icon', Icon)
          ..add('Result', Result)
          ..add('Text', Text))
        .toString();
  }
}

class SearchResultBuilder
    implements Builder<SearchResult, SearchResultBuilder> {
  _$SearchResult? _$v;

  String? _FirstURL;
  String? get FirstURL => _$this._FirstURL;
  set FirstURL(String? FirstURL) => _$this._FirstURL = FirstURL;

  String? _Icon;
  String? get Icon => _$this._Icon;
  set Icon(String? Icon) => _$this._Icon = Icon;

  String? _Result;
  String? get Result => _$this._Result;
  set Result(String? Result) => _$this._Result = Result;

  String? _Text;
  String? get Text => _$this._Text;
  set Text(String? Text) => _$this._Text = Text;

  SearchResultBuilder();

  SearchResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _FirstURL = $v.FirstURL;
      _Icon = $v.Icon;
      _Result = $v.Result;
      _Text = $v.Text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchResult;
  }

  @override
  void update(void Function(SearchResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchResult build() => _build();

  _$SearchResult _build() {
    final _$result = _$v ??
        new _$SearchResult._(
            FirstURL: BuiltValueNullFieldError.checkNotNull(
                FirstURL, r'SearchResult', 'FirstURL'),
            Icon: BuiltValueNullFieldError.checkNotNull(
                Icon, r'SearchResult', 'Icon'),
            Result: BuiltValueNullFieldError.checkNotNull(
                Result, r'SearchResult', 'Result'),
            Text: BuiltValueNullFieldError.checkNotNull(
                Text, r'SearchResult', 'Text'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
