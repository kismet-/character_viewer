import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_result.g.dart';

abstract class SearchResult
    implements Built<SearchResult, SearchResultBuilder> {
  static Serializer<SearchResult> get serializer => _$searchResultSerializer;

  String get FirstURL;
  String get Icon;
  String get Result;
  String get Text;

  SearchResult._();
  factory SearchResult([updates(SearchResultBuilder b)]) = _$SearchResult;
}
