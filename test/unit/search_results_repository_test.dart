import 'package:character_viewer/home/component/repository/search_results_repository.dart';
import 'package:character_viewer/model/test/canned_data.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import 'package:test/test.dart';

import 'lib/mocks/search_results_repository_test.mocks.dart';

const searchResultsList = cannedResponse;

@GenerateNiceMocks([MockSpec<http.Client>()])
void main() {
  late MockClient api;
  late SearchResultsRepository searchResultsRepository;

  void mockApiResponse() {
    when(api.get(any))
        .thenAnswer((_) async => http.Response(searchResultsList, 200));
  }

  setUp(() async {
    api = MockClient();
    mockApiResponse();
    searchResultsRepository = SearchResultsRepository(api, 1);
    return await Future.delayed(Duration.zero);
  });

  test('fetches and converts search results', () {
    expect(lastEvent(searchResultsRepository.results)?.length, 8);

    verify(api.get(any)).called(1);
  });
}
