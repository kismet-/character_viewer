import 'package:character_viewer/details/page/details_page.dart';
import 'package:character_viewer/home/component/search_results_list/search_results_list_view_model.dart';
import 'package:character_viewer/model/search_result.dart';
import 'package:flutter/material.dart';

class ResultsList extends StatefulWidget {
  final ResultsListViewModel viewModel;

  const ResultsList({super.key, required this.viewModel});

  @override
  ResultsListState createState() => ResultsListState();
}

class ResultsListState extends State<ResultsList> {
  SearchResult? character;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return _buildWideLayout(context);
      } else {
        return ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
          itemCount: widget.viewModel.searchResults.length,
          separatorBuilder: (_, __) {
            return Container(
              height: 10,
            );
          },
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CharacterDetailsPage(
                      character: widget.viewModel.searchResults[index],
                    ),
                  ),
                );
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(4, 4),
                        blurRadius: 6,
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(-4, 4),
                        blurRadius: 6,
                        spreadRadius: 1,
                      ),
                    ],
                    color: const Color.fromRGBO(65, 65, 66, 1),
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.viewModel.searchResults[index].FirstURL,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      }
    });
  }

  _buildWideLayout(context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
            itemCount: widget.viewModel.searchResults.length,
            separatorBuilder: (_, __) {
              return Container(
                height: 10,
              );
            },
            itemBuilder: (context, itemIndex) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    character = widget.viewModel.searchResults[itemIndex];
                  });
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(4, 4),
                        blurRadius: 6,
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(-4, 4),
                        blurRadius: 6,
                        spreadRadius: 1,
                      ),
                    ],
                    color: const Color.fromRGBO(65, 65, 66, 1),
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.viewModel.searchResults[itemIndex].FirstURL,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Expanded(
          flex: 3,
          child: character != null
              ? CharacterDetailsPage(
                  character: character!,
                )
              : const Placeholder(),
        ),
      ],
    );
  }
}
