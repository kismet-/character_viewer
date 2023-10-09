import 'package:character_viewer/bloc/source_builder.dart';
import 'package:character_viewer/common/widgets/component/component.dart';
import 'package:character_viewer/home/component/search_bar/search_bar_bloc.dart';
import 'package:character_viewer/home/component/search_bar/search_bar_view_model.dart';
import 'package:flutter/material.dart';

/// Component responsible for associating a [SearchBarComponent] and a [SearchBarBloc].
class SearchBarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Component<SearchBarBloc, SearchBarBlocFactory>(
      bloc: (factory) => factory.createSearchBarBloc(),
      builder: (context, bloc) {
        return SourceBuilder.of<SearchBarViewModel?>(
          source: bloc.viewModel,
          builder: (snapshot) {
            if (!snapshot.present) {
              return const SizedBox.shrink();
            } else {
              return SearchBar(
                controller: snapshot.value?.textController,
                hintText: 'Search',
                leading: const Icon(Icons.search),
                onChanged: snapshot.value?.onChanged,
                trailing: [
                  IconButton(
                    icon: const Icon(Icons.cancel),
                    onPressed: () {
                      snapshot.value?.clear();
                    },
                  )
                ],
              );
            }
          },
        );
      },
    );
  }
}
