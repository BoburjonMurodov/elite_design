import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../../data/client/client_item.dart';

part 'client_list_response.freezed.dart';
part 'client_list_response.g.dart';



@freezed
class ClientListResponse with _$ClientListResponse {
  const factory ClientListResponse({
    @JsonKey(name: "error")
    required bool error,
    @JsonKey(name: "message")
    required String message,
    @JsonKey(name: "data")
    required List<ClientItem> data,
  }) = _ClientListResponse;

  factory ClientListResponse.fromJson(Map<String, dynamic> json) => _$ClientListResponseFromJson(json);
}

