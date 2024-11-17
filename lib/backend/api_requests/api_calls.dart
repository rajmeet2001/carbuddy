import 'dart:convert';
import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TestAuthCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'testAuth',
      apiUrl: 'https://api.pinata.cloud/data/testAuthentication',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySW5mb3JtYXRpb24iOnsiaWQiOiJlMzIyZDM3OC0zOTdlLTQxNmUtOGQ4Ni01M2RhOTE3MTBiNGQiLCJlbWFpbCI6InJham1lZXQyMDAxQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaW5fcG9saWN5Ijp7InJlZ2lvbnMiOlt7ImRlc2lyZWRSZXBsaWNhdGlvbkNvdW50IjoxLCJpZCI6IkZSQTEifSx7ImRlc2lyZWRSZXBsaWNhdGlvbkNvdW50IjoxLCJpZCI6Ik5ZQzEifV0sInZlcnNpb24iOjF9LCJtZmFfZW5hYmxlZCI6ZmFsc2UsInN0YXR1cyI6IkFDVElWRSJ9LCJhdXRoZW50aWNhdGlvblR5cGUiOiJzY29wZWRLZXkiLCJzY29wZWRLZXlLZXkiOiJkYzM4MmU0NDY5MTFkYWQyNWFmNSIsInNjb3BlZEtleVNlY3JldCI6IjgxMmRiYzI4M2Y4NmE1NzFiMGI5YjI3YTQ4ZDVkMGQ3NzU4MjczYzA2YjMxMjIwNTcxMDk0NTAyYWExZDE1YTkiLCJleHAiOjE3NjMzODc5Nzh9.9J9g0G47jNjt7FcNWRbq1ABYD6BL89KH9ecRM32fhvQ­',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchImageCall {
  static Future<ApiCallResponse> call({
    String? id = '01933adc-e6c6-7bf4-8fe8-1e51c28ce7af',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'fetchImage',
      apiUrl: 'https://api.pinata.cloud/v3/files/{id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySW5mb3JtYXRpb24iOnsiaWQiOiJlMzIyZDM3OC0zOTdlLTQxNmUtOGQ4Ni01M2RhOTE3MTBiNGQiLCJlbWFpbCI6InJham1lZXQyMDAxQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaW5fcG9saWN5Ijp7InJlZ2lvbnMiOlt7ImRlc2lyZWRSZXBsaWNhdGlvbkNvdW50IjoxLCJpZCI6IkZSQTEifSx7ImRlc2lyZWRSZXBsaWNhdGlvbkNvdW50IjoxLCJpZCI6Ik5ZQzEifV0sInZlcnNpb24iOjF9LCJtZmFfZW5hYmxlZCI6ZmFsc2UsInN0YXR1cyI6IkFDVElWRSJ9LCJhdXRoZW50aWNhdGlvblR5cGUiOiJzY29wZWRLZXkiLCJzY29wZWRLZXlLZXkiOiJmOWM0Nzc1ZjYzMjRmMjk5OGFkMyIsInNjb3BlZEtleVNlY3JldCI6Ijc5ZTVjMWM5ODY2Nzc4OTE1OTc5YjM1MzM3M2VkODA4NjA4OTYxMDNlMmEyNzk1YjcxMzVhMjFkMDZjYjYyMjkiLCJleHAiOjE3NjMzOTM3OTN9.GLydqCUSDkdoW-q2DFczxHh_jkECyGTafxcj3SxE5pM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListImagesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'listImages',
      apiUrl: 'https://api.pinata.cloud/v3/files',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySW5mb3JtYXRpb24iOnsiaWQiOiJlMzIyZDM3OC0zOTdlLTQxNmUtOGQ4Ni01M2RhOTE3MTBiNGQiLCJlbWFpbCI6InJham1lZXQyMDAxQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaW5fcG9saWN5Ijp7InJlZ2lvbnMiOlt7ImRlc2lyZWRSZXBsaWNhdGlvbkNvdW50IjoxLCJpZCI6IkZSQTEifSx7ImRlc2lyZWRSZXBsaWNhdGlvbkNvdW50IjoxLCJpZCI6Ik5ZQzEifV0sInZlcnNpb24iOjF9LCJtZmFfZW5hYmxlZCI6ZmFsc2UsInN0YXR1cyI6IkFDVElWRSJ9LCJhdXRoZW50aWNhdGlvblR5cGUiOiJzY29wZWRLZXkiLCJzY29wZWRLZXlLZXkiOiJmOWM0Nzc1ZjYzMjRmMjk5OGFkMyIsInNjb3BlZEtleVNlY3JldCI6Ijc5ZTVjMWM5ODY2Nzc4OTE1OTc5YjM1MzM3M2VkODA4NjA4OTYxMDNlMmEyNzk1YjcxMzVhMjFkMDZjYjYyMjkiLCJleHAiOjE3NjMzOTM3OTN9.GLydqCUSDkdoW-q2DFczxHh_jkECyGTafxcj3SxE5pM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
