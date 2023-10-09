import 'package:built_collection/built_collection.dart';
import 'package:character_viewer/home/component/repository/search_results_repository.dart';
import 'package:character_viewer/home/component/search_results_list/search_results_list_view_model.dart';
import 'package:character_viewer/model/search_result.dart';
import 'package:character_viewer/provided_service.dart';
import 'package:inject_annotation/inject_annotation.dart';
import 'package:rxdart/rxdart.dart';

class SearchResultsListBloc {
  final SearchResultsRepository searchResultsRepository;

  Source<ResultsListViewModel> get viewModel => toSource(combineLatest(
      searchResultsRepository.results, (results) => _buildViewModel(results)));

  @provides
  @inject
  SearchResultsListBloc(this.searchResultsRepository);

  static ResultsListViewModel _buildViewModel(BuiltList<SearchResult> results) {
    return ResultsListViewModel((b) => b..searchResults.replace(results));
  }
}

/// Constructs new instances of [CreateLoadBloc]s via the DI framework.
abstract class SearchResultsListBlocFactory implements ProvidedService {
  @inject
  SearchResultsListBloc createSearchResultsListBloc();
}
