import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/domain/toilet/toilet.dart';
import 'package:practice_flutter/domain/toilet/toilet_repository.dart';
import 'package:practice_flutter/foundation/util/reader.dart';

final toiletControllerProvider = Provider((ref) => ToiletController._(ref.read));

class ToiletController {
  ToiletController._(this._read);

  final Reader _read;

  ToiletRepository get _toiletRepository => _read(toiletRepositoryProvider);

  Future<Toilets> getToiletList() async {
    final response = await _toiletRepository.getToiletList();

    switch (response.statusCode) {
      case 200:
        final responseData = response.data;
        if (responseData != null) {
          final toilets = Toilets.fromJson(responseData);
          return toilets;
        }
        throw Exception('status[200]: but data not found');
      case 404:
        throw Exception('state[404]: data not found');
    }
    throw UnimplementedError();
  }
}
