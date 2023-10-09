import 'package:character_viewer/home/component/search_bar/search_bar_component.dart';
import 'package:character_viewer/home/component/search_results_list/search_results_list_component.dart';
import 'package:character_viewer/navigation/page_provider.dart';
import 'package:character_viewer/theme/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: SearchBarComponent(),
      ),
      backgroundColor: AppColors.background,
      body: SearchResultsListComponent(),
    );
  }
}

class HomePageProvider implements PageProvider {
  @override
  WidgetBuilder providePageBuilder(BuildContext context) {
    return (context) => HomePage();
  }
}
