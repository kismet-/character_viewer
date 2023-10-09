import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:character_viewer/common/repository/repository.dart';
import 'package:character_viewer/model/search_result.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:inject_annotation/inject_annotation.dart';
import 'package:rxdart/rxdart.dart';

/// A repository that stores [SearchResult]s
class SearchResultsRepository implements Repository {
  final _results = createBehaviorSubject<BuiltList<SearchResult>>();
  final _filteredResults = createBehaviorSubject<BuiltList<SearchResult>>();
  final http.Client _client;
  final int appVariant;

  /// Publishes the [SearchResult]s.
  Observable<BuiltList<SearchResult>> get results => _filteredResults;

  @inject
  @provides
  @singleton
  SearchResultsRepository(this._client, this.appVariant) {
    fetchSearchResults();
  }

  /// Publishes streams
  void _publishSearchResults(BuiltList<SearchResult> results) {
    _filteredResults.sendNext(results);
  }

  void _publishResults(BuiltList<SearchResult> results) {
    _results.sendNext(results);
  }

  void filterSearchResults(String filterText) {
    if (filterText == '') {
      _publishSearchResults(lastEvent(_results)!);
      return;
    }

    final lowercaseFilterText = filterText.toLowerCase();

    _publishSearchResults(BuiltList<SearchResult>.from(lastEvent(_results)!
        .where((result) =>
            result.FirstURL.toLowerCase().contains(lowercaseFilterText))));
  }

  void fetchSearchResults() async {
    try {
      final response = await _client.get(appVariant == 2
          ? Uri.parse(
              'http://api.duckduckgo.com/?q=the+wire+characters&format=json')
          : Uri.parse(
              'http://api.duckduckgo.com/?q=simpsons+characters&format=json'));

      final results =
          json.decode(response.body)['RelatedTopics'] as List<dynamic>;

      BuiltList<SearchResult> searchResultsList =
          BuiltList<SearchResult>(results.map((json) {
        final imageUrl = json['Icon']['URL'].toString().isEmpty
            ? 'https://placehold.jp/300x300.png'
            : 'https://duckduckgo.com${json['Icon']['URL']}';

        return SearchResult((b) => b
          ..FirstURL = extractNameFromUrl(json['FirstURL'])
          ..Result = json['Result']
          ..Text = json['Text']
          ..Icon = imageUrl);
      }).toList());

      _publishResults(searchResultsList);
      _publishSearchResults(searchResultsList);
    } catch (e, s) {
      debugPrint(s.toString());
      debugPrint(e.toString());
    }
  }

  String extractNameFromUrl(String url) {
    final lastPart = url.split('/').last;
    String name = lastPart.replaceAll('_', ' ');
    name = name.replaceAllMapped(RegExp(r'\_\(([^)]+)\)'), (match) {
      return ' (${match.group(1)})';
    });

    return name;
  }

  @override
  void clear() {
    // TODO: implement clear
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void stop() {
    // TODO: implement stop
  }
}
