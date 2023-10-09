import 'package:built_collection/built_collection.dart';
import 'package:character_viewer/home/component/repository/search_results_repository.dart';
import 'package:character_viewer/home/component/search_bar/search_bar_view_model.dart';
import 'package:character_viewer/model/search_result.dart';
import 'package:character_viewer/provided_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:inject_annotation/inject_annotation.dart';
import 'package:rxdart/rxdart.dart';

class SearchBarBloc {
  final SearchResultsRepository _searchResultsRepository;
  final TextEditingController _controller = TextEditingController();

  Source<SearchBarViewModel> get viewModel => toSource(combineLatest(
      _searchResultsRepository.results, (results) => _buildViewModel(results)));

  @provides
  @inject
  SearchBarBloc(this._searchResultsRepository);

  SearchBarViewModel _buildViewModel(BuiltList<SearchResult> results) {
    return SearchBarViewModel((b) => b
      ..onChanged = _filterResults
      ..textController = _controller
      ..clear = _clearSearch);
  }

  void _filterResults(String filterText) {
    _searchResultsRepository.filterSearchResults(filterText);
  }

  void _clearSearch() {
    _searchResultsRepository.filterSearchResults('');
    _controller.clear();
  }
}

/// Constructs new instances of [CreateLoadBloc]s via the DI framework.
abstract class SearchBarBlocFactory implements ProvidedService {
  @inject
  SearchBarBloc createSearchBarBloc();
}
