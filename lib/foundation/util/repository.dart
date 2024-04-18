import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Repository {
  @protected
  Dio get apiClient => Dio(BaseOptions(baseUrl: 'http://localhost:8080')) //
    ..interceptors.add(LogInterceptor(responseBody: true));
}
