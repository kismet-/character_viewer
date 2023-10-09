// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_bar_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchBarViewModel extends SearchBarViewModel {
  @override
  final ValueChanged<String> onChanged;
  @override
  final void Function() clear;
  @override
  final TextEditingController textController;

  factory _$SearchBarViewModel(
          [void Function(SearchBarViewModelBuilder)? updates]) =>
      (new SearchBarViewModelBuilder()..update(updates))._build();

  _$SearchBarViewModel._(
      {required this.onChanged,
      required this.clear,
      required this.textController})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        onChanged, r'SearchBarViewModel', 'onChanged');
    BuiltValueNullFieldError.checkNotNull(
        clear, r'SearchBarViewModel', 'clear');
    BuiltValueNullFieldError.checkNotNull(
        textController, r'SearchBarViewModel', 'textController');
  }

  @override
  SearchBarViewModel rebuild(
          void Function(SearchBarViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchBarViewModelBuilder toBuilder() =>
      new SearchBarViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is SearchBarViewModel &&
        onChanged == _$dynamicOther.onChanged &&
        clear == _$dynamicOther.clear &&
        textController == other.textController;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, onChanged.hashCode);
    _$hash = $jc(_$hash, clear.hashCode);
    _$hash = $jc(_$hash, textController.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchBarViewModel')
          ..add('onChanged', onChanged)
          ..add('clear', clear)
          ..add('textController', textController))
        .toString();
  }
}

class SearchBarViewModelBuilder
    implements Builder<SearchBarViewModel, SearchBarViewModelBuilder> {
  _$SearchBarViewModel? _$v;

  ValueChanged<String>? _onChanged;
  ValueChanged<String>? get onChanged => _$this._onChanged;
  set onChanged(ValueChanged<String>? onChanged) =>
      _$this._onChanged = onChanged;

  void Function()? _clear;
  void Function()? get clear => _$this._clear;
  set clear(void Function()? clear) => _$this._clear = clear;

  TextEditingController? _textController;
  TextEditingController? get textController => _$this._textController;
  set textController(TextEditingController? textController) =>
      _$this._textController = textController;

  SearchBarViewModelBuilder();

  SearchBarViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _onChanged = $v.onChanged;
      _clear = $v.clear;
      _textController = $v.textController;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchBarViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchBarViewModel;
  }

  @override
  void update(void Function(SearchBarViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchBarViewModel build() => _build();

  _$SearchBarViewModel _build() {
    final _$result = _$v ??
        new _$SearchBarViewModel._(
            onChanged: BuiltValueNullFieldError.checkNotNull(
                onChanged, r'SearchBarViewModel', 'onChanged'),
            clear: BuiltValueNullFieldError.checkNotNull(
                clear, r'SearchBarViewModel', 'clear'),
            textController: BuiltValueNullFieldError.checkNotNull(
                textController, r'SearchBarViewModel', 'textController'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
