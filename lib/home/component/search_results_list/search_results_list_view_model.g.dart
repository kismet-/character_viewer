// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_results_list_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResultsListViewModel extends ResultsListViewModel {
  @override
  final BuiltList<SearchResult> searchResults;

  factory _$ResultsListViewModel(
          [void Function(ResultsListViewModelBuilder)? updates]) =>
      (new ResultsListViewModelBuilder()..update(updates))._build();

  _$ResultsListViewModel._({required this.searchResults}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        searchResults, r'ResultsListViewModel', 'searchResults');
  }

  @override
  ResultsListViewModel rebuild(
          void Function(ResultsListViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResultsListViewModelBuilder toBuilder() =>
      new ResultsListViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResultsListViewModel &&
        searchResults == other.searchResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, searchResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResultsListViewModel')
          ..add('searchResults', searchResults))
        .toString();
  }
}

class ResultsListViewModelBuilder
    implements Builder<ResultsListViewModel, ResultsListViewModelBuilder> {
  _$ResultsListViewModel? _$v;

  ListBuilder<SearchResult>? _searchResults;
  ListBuilder<SearchResult> get searchResults =>
      _$this._searchResults ??= new ListBuilder<SearchResult>();
  set searchResults(ListBuilder<SearchResult>? searchResults) =>
      _$this._searchResults = searchResults;

  ResultsListViewModelBuilder();

  ResultsListViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _searchResults = $v.searchResults.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResultsListViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResultsListViewModel;
  }

  @override
  void update(void Function(ResultsListViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResultsListViewModel build() => _build();

  _$ResultsListViewModel _build() {
    _$ResultsListViewModel _$result;
    try {
      _$result = _$v ??
          new _$ResultsListViewModel._(searchResults: searchResults.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'searchResults';
        searchResults.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResultsListViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
