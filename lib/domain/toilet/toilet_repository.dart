
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_flutter/foundation/util/repository.dart';

final toiletRepositoryProvider = Provider((_) => ToiletRepository._());

class ToiletRepository extends Repository {
  ToiletRepository._();

  Future<Response<Map<String, dynamic>>> getToiletList() async {
    // return apiClient.get<Map<String, dynamic>>('http://10.0.2.2:8080/toilet/v1');
    return apiClient.get<Map<String, dynamic>>('https://cabf-211-7-150-1.ngrok-free.app/toilet/v1');
  }
}
