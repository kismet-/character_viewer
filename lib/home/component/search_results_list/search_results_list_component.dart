import 'package:character_viewer/bloc/source_builder.dart';
import 'package:character_viewer/common/widgets/component/component.dart';
import 'package:character_viewer/common/widgets/loading/character_viewer_loading_spinner.dart';
import 'package:character_viewer/home/component/search_results_list/search_results_list.dart';
import 'package:character_viewer/home/component/search_results_list/search_results_list_bloc.dart';
import 'package:character_viewer/home/component/search_results_list/search_results_list_view_model.dart';
import 'package:flutter/material.dart';

class SearchResultsListComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Component<SearchResultsListBloc, SearchResultsListBlocFactory>(
      bloc: (factory) => factory.createSearchResultsListBloc(),
      builder: (context, bloc) {
        return SourceBuilder.of<ResultsListViewModel?>(
          source: bloc.viewModel,
          builder: (snapshot) {
            if (!snapshot.present) {
              return _buildLoadingState(context);
            } else {
              return ResultsList(
                viewModel: snapshot.value!,
              );
            }
          },
        );
      },
    );
  }

  Widget _buildLoadingState(BuildContext context) =>
      const Center(child: LoadingSpinner());
}
