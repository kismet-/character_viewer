import 'package:built_value/built_value.dart';
import 'package:flutter/cupertino.dart' hide Builder;

part 'search_bar_view_model.g.dart';

abstract class SearchBarViewModel
    implements Built<SearchBarViewModel, SearchBarViewModelBuilder> {
  ValueChanged<String> get onChanged;
  void Function() get clear;
  TextEditingController get textController;

  SearchBarViewModel._();

  factory SearchBarViewModel([updates(SearchBarViewModelBuilder b)]) =
      _$SearchBarViewModel;
}
