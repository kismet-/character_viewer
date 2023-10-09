import 'package:character_viewer/home/component/search_bar/search_bar_bloc.dart';
import 'package:character_viewer/home/component/search_results_list/search_results_list_bloc.dart';
import 'package:character_viewer/provided_service.dart';

/// A factory that provides BLoC instances.
abstract class BlocFactory
    implements
        ProvidedService,
        SearchResultsListBlocFactory,
        SearchBarBlocFactory {}
