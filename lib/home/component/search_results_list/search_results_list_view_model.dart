import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:character_viewer/model/search_result.dart';

part 'search_results_list_view_model.g.dart';

abstract class ResultsListViewModel
    implements Built<ResultsListViewModel, ResultsListViewModelBuilder> {
  BuiltList<SearchResult> get searchResults;

  ResultsListViewModel._();

  factory ResultsListViewModel([updates(ResultsListViewModelBuilder b)]) =
      _$ResultsListViewModel;
}
